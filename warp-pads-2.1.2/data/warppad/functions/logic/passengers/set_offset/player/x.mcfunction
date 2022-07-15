execute at @s[scores={wp.x_off=1..}] run function warppad:logic/passengers/set_offset/player/x/_anonymous0
execute at @s[scores={wp.x_off=..-1}] run function warppad:logic/passengers/set_offset/player/x/_anonymous1
execute unless entity @s[scores={wp.x_off=0}] run function warppad:logic/passengers/set_offset/player/x
