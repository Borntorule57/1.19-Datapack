tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad] remove wp.tier_equal_or_less
tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=trident-component.warppad.tier_2] add wp.tier_equal_or_less
execute if entity @s[tag=wp.tier_equal_or_less] run function warppad:logic/conditions/dim_minecraft_overworld/_anonymous0/_anonymous0
tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=trident-component.warppad.tier_1] add wp.tier_equal_or_less
execute if entity @s[tag=wp.tier_equal_or_less] run function warppad:logic/conditions/dim_minecraft_overworld/_anonymous0/_anonymous1
tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=trident-component.warppad.tier_0] add wp.tier_equal_or_less
execute if entity @s[tag=wp.tier_equal_or_less] run function warppad:logic/conditions/dim_minecraft_overworld/_anonymous0/_anonymous2
execute as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.valid_dest,tag=!wp.invalid_dest,tag=!wp.early_exclude,tag=!wp.processing] run function warppad:logic/conditions/dim_minecraft_overworld/_anonymous0/tag_invalid
