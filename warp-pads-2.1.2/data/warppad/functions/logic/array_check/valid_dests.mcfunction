tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.invalid_dest,nbt={data:{AllSeeing:1b}}] add wp.valid_dest
execute if data entity @s data.ValidDests[0] run function warppad:logic/array_check/valid_dests/_anonymous0
data modify entity @s data.ValidDests set from entity @s data.IteratedDests
data modify entity @s data.IteratedDests set value []
