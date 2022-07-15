summon minecraft:armor_stand ~ ~ ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.name_display"],CustomNameVisible:0b}
data modify entity @e[tag=wp.name_display,distance=..0.001,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=wp.name_display,distance=..0.001,limit=1,sort=nearest] CustomNameVisible set value 1b
