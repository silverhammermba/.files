#!/usr/bin/env ruby
# pick a random background and generate an awesome theme based on it

require 'color'
require 'color/palette/monocontrast'
require 'erb'
require 'fileutils'
require 'optparse'
require 'shellwords'

class ThemeError < StandardError; end

# get the theme path for an image
def get_theme_path path
  File.join File.dirname(path), ".#{File.basename path}.theme"
end

# set the theme from an image path
def set_theme path
  Dir.chdir __dir__ do
    FileUtils.rm_f 'default'
    FileUtils.ln_s get_theme_path(path), 'default'
  end
end

# check if an image path has a theme
def has_theme? path
  File.directory? get_theme_path(path)
end

# make an awesome theme from a background
def make_theme bg_path
  # TODO use a hidden file name
  theme_path = get_theme_path bg_path
  file = File.basename bg_path

  raise ThemeError, "theme already exists for `#{file}'" if File.exists? theme_path

  # XXX size of top of image to consider when picking dominant color, based on what the awesome taskbar overlaps
  height = 20

  # find most dominant color at the top of the image by quantizing down to 8 first
  hist = `convert #{bg_path.shellescape} -crop x#{height}+0+0 -dither None -colors 8 -format %c -depth 8 histogram:info:-`
  most = hist.lines.sort_by { |line| Integer(line[/(\d+):/, 1], 10) }[-1]
  base = Color::RGB.by_css(most[/#\h{6}/])

  # generate contrasting color
  con = base.to_hsl
  con.hue += 180
  # should be at least somewhat saturated
  con.saturation = [50, con.saturation].max
  # shouldn't be too light or dark (in case base is very light or dark)
  con.luminosity = [25, con.luminosity, 75].sort[1]
  con = con.to_rgb

  # generate monochrome contrasting color palettes
  palette = Color::Palette::MonoContrast.new(base)
  con_palette = Color::Palette::MonoContrast.new(con)

  base_i = 0

  # try to find a muted color
  mute_i = 5
  while mute_i > 0
    mi = mute_i - 1
    # if this doesn't change the color, or it's still a distinct color from the base, step down
    if palette.background[mute_i] == palette.background[mi] || (palette.background[mi] != palette.background[base_i] && mi >= 3)
      mute_i = mi
    else
      break
    end
  end
  # mute_i might equal base_i

  # try to find a highlighted color
  high_i = -5
  while high_i < 0
    hi = high_i + 1
    if palette.background[high_i] == palette.background[hi] || (palette.background[hi] != palette.background[base_i] && hi <= -3)
      high_i = hi
    else
      break
    end
  end
  # high_i might equal base_i

  # but it should be impossible for base_i == high_i == mute_i

  # if base is really light, make muted color slightly less dark than the highlighted one
  if mute_i == base_i
    mute_i = (base_i + high_i) / 2
  end

  # if base is really dark, make the muted color the highlighted one and put muted in between
  if high_i == base_i
    high_i = mute_i
    mute_i = (base_i + high_i) / 2
  end

  # variables for template

  # full path to background
  wallpaper = bg_path
  # base colors
  base_bg = palette.background[base_i].html
  base_fg = palette.foreground[base_i].html
  # muted colors
  mute_bg = palette.background[mute_i].html
  mute_fg = palette.foreground[mute_i].html
  # highlighted colors
  high_bg = palette.background[high_i].html
  high_fg = palette.foreground[high_i].html
  # standout colors
  stand_bg = con_palette.background[base_i].html
  stand_fg = con_palette.foreground[base_i].html

  begin
    # create the theme
    Dir.mkdir theme_path

    Dir.chdir File.join(__dir__, 'template')

    # copy images
    %w{layouts titlebar submenu.png}.each do |dir|
      FileUtils.cp_r dir, theme_path
    end

    # recolor images
    `mogrify -fill "#{base_fg}" -opaque "#e6e6e6" #{File.join(theme_path, 'layouts', '*').shellescape}`

    File.open(File.join(theme_path, 'theme.lua'), 'w') do |f|
      f.puts ERB.new(File.read('theme.lua.erb')).result(binding)
    end
  rescue
    FileUtils.rm_rf theme_path
    raise
  end
end

# parse options
$pick = true
opt = OptionParser.new do |opts|
  opts.banner = "USAGE: #$0 [-g|--generate] DIR"

  opts.on '-g', '--generate', 'just generate themes' do
    $pick = false
  end
end
opt.parse!

if ARGV.size != 1
  warn opt
  exit 1
end

# get full bg path
bg_dir = File.expand_path(ARGV[0])

# if path is a file, assume it is an image. make and set the theme
if File.file? bg_dir
  bg = bg_dir
  make_theme bg unless has_theme? bg
  set_theme bg
  exit
end

# otherwise assume it is a background dir

# find all files in background dir
backgrounds = Dir.entries(bg_dir).map { |e| File.join(bg_dir, e) }.select { |p| File.file? p }
# figure out which have themes
themed, unthemed = backgrounds.partition { |p| has_theme? p }

if $pick
  # need a pre-existing theme
  if themed.empty?
    warn "no themed backgrounds exist!"
    exit 1
  end

  # pick one randomly
  srand
  set_theme themed.sample

  exit if unthemed.empty?

  # detach a child process and exit
  pid = Process.fork
  if pid
    Process.detach pid
    exit
  end
end

# build themes for the unthemed backgrounds
unthemed.each do |bg|
  begin
    make_theme bg
  rescue ThemeError
    warn $!
  end
end
