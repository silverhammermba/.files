IRB.conf[:USE_READLINE] = true

# disable tab completion
Readline.completion_append_character = ""
Readline.completion_proc = lambda { |x| x + " " }

require 'pp'

IRB.conf[:PROMPT][:CUSTOM] =
{
	:PROMPT_N => "  ",
	:PROMPT_I => "  ",
	:PROMPT_S => nil,
	:PROMPT_C => " ",
	:RETURN => "# %s\n"
}

IRB.conf[:PROMPT_MODE] = :CUSTOM
