execute in minecraft:overworld run function warppad:logic/array_check/invalid_dests/dim_minecraft_overworld
execute in minecraft:the_nether run function warppad:logic/array_check/invalid_dests/dim_minecraft_the_nether
execute in minecraft:the_end run function warppad:logic/array_check/invalid_dests/dim_minecraft_the_end
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude] unless score @s wp.frequency = @e[tag=wp.processing,limit=1] wp.frequency run tag @s add wp.early_exclude
execute if entity @s[nbt={data:{Reserved:1b}}] run function warppad:logic/array_check/invalid_dests/_anonymous0
execute if entity @s[nbt={data:{Reserved:0b}}] run tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude,nbt={data:{Reserved:1b}}] add wp.early_exclude
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude,nbt={data:{Private:1b}}] align xyz unless score @s wp.linked_UUID = @p[dx=0,dy=0,dz=0] wp.linked_UUID run tag @s add wp.early_exclude
execute if data entity @s data.InvalidDests[0] run function warppad:logic/array_check/invalid_dests/_anonymous1
data modify entity @s data.InvalidDests set from entity @s data.IteratedDests
data modify entity @s data.IteratedDests set value []
tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=wp.early_exclude] add wp.invalid_dest
