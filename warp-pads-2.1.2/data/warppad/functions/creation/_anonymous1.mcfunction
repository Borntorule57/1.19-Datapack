summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.primary_anim"],ArmorItems:[{},{},{},{id:"minecraft:ender_pearl",Count:1b}],Rotation:[0.0f,0.0f]}
summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.secondary_anim","wp.secondary_anim_0"],ArmorItems:[{},{},{},{id:"minecraft:amethyst_shard",Count:1b}],Rotation:[45.0f,-25.0f],Pose:{Head:[-15.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.secondary_anim","wp.secondary_anim_1"],ArmorItems:[{},{},{},{id:"minecraft:amethyst_shard",Count:1b}],Rotation:[135.0f,-25.0f],Pose:{Head:[-15.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.secondary_anim","wp.secondary_anim_2"],ArmorItems:[{},{},{},{id:"minecraft:amethyst_shard",Count:1b}],Rotation:[225.0f,-25.0f],Pose:{Head:[-15.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:"[\"Animated Item\"]",Marker:1b,Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["trident-entity.warppad.wp_anim_stand","wp.anim_stand","wp.secondary_anim","wp.secondary_anim_3"],ArmorItems:[{},{},{},{id:"minecraft:amethyst_shard",Count:1b}],Rotation:[315.0f,-25.0f],Pose:{Head:[-15.0f,0.0f,0.0f]}}
execute as @e[tag=wp.primary_anim] at @s run function warppad:creation/_anonymous1/_anonymous0
particle minecraft:witch ~ ~-0.2 ~ 0.25 0 0.25 1 80 normal @a[distance=..15]
summon minecraft:marker ~ ~ ~ {CustomName:"[\"Warp Pad\"]",data:{ValidDests:[],InvalidDests:[],IteratedDests:[],Color:"default",Frequency:0b,Reserved:0b,Private:0b,Owner_UUID:[I;0,0,0,0],AllSeeing:0b,Destructable:1b,SpamPunish:1b},Tags:["trident-entity.warppad.wp_pad","wp.pad","global.ignore","global.ignore.pos","global.forceload","wp.temp"]}
scoreboard players set @e[tag=wp.temp] wp.spawn_anim 100
tag @e[tag=wp.temp] add trident-component.warppad.tier_0
execute as @e[tag=wp.temp] run schedule function warppad:entities/warppad/wp_pad/animate_per 1t append
tag @s add wp.mainitem
execute as @e[tag=wp.temp] at @s run function warppad:entities/warppad/wp_pad/construct
tag @s remove wp.mainitem
tag @e remove wp.temp
execute align xyz run kill @e[type=minecraft:item,tag=!global.ignore,tag=!global.ignore.kill,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:amethyst_shard",Count:4b}}]
kill @s
