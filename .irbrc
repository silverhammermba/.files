require 'pp'

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT][:CUSTOM] = {
	:PROMPT_I => "  ",
	:PROMPT_S => "  ",
	:PROMPT_C => "  ",
	:PROMPT_N => "  ",
	:RETURN => "# %s\n"
}

IRB.conf[:PROMPT_MODE] = :CUSTOM

