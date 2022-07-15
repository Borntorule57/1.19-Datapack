execute at @s[scores={wp.z_off=1..}] run function warppad:logic/passengers/set_offset/player/z/_anonymous0
execute at @s[scores={wp.z_off=..-1}] run function warppad:logic/passengers/set_offset/player/z/_anonymous1
execute unless entity @s[scores={wp.z_off=0}] run function warppad:logic/passengers/set_offset/player/z
