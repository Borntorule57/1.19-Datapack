execute store result score @s wp.math run data get entity @s data.InvalidDests[0]
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude] if score @s wp.UUID = @e[tag=wp.processing,limit=1] wp.math run tag @s add wp.invalid_dest
data modify entity @s data.IteratedDests append from entity @s data.InvalidDests[0]
data remove entity @s data.InvalidDests[0]
execute if data entity @s data.InvalidDests[0] run function warppad:logic/array_check/invalid_dests/_anonymous1
