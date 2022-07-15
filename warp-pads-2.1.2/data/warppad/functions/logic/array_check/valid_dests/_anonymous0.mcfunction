execute store result score @s wp.math run data get entity @s data.ValidDests[0]
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.iterated,tag=!wp.invalid_dest,tag=!wp.valid_dest,limit=1] if score @s wp.UUID = @e[tag=wp.processing,limit=1] wp.math run tag @s add wp.valid_dest
data modify entity @s data.IteratedDests append from entity @s data.ValidDests[0]
data remove entity @s data.ValidDests[0]
execute if data entity @s data.ValidDests[0] run function warppad:logic/array_check/valid_dests/_anonymous0
