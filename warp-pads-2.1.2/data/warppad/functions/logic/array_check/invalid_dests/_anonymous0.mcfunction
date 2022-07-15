tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude,nbt={data:{Reserved:0b}}] add wp.early_exclude
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.processing,tag=!wp.early_exclude,nbt={data:{Reserved:1b}}] unless score @s wp.linked_UUID = @e[tag=wp.processing,limit=1] wp.linked_UUID run tag @s add wp.early_exclude
