execute if entity @s[type=minecraft:player] run function warppad:logic/passengers/set_offset/player
execute unless entity @s[type=minecraft:player] run function warppad:logic/passengers/set_offset/other
