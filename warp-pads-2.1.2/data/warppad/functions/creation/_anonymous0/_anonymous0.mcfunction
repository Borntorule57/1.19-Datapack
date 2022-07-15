data modify entity @s Thrower set from entity @p UUID
setblock ~ ~ ~ minecraft:gold_block
summon minecraft:marker ~ ~1 ~ {CustomName:"[\"Warp Pad\"]",data:{ValidDests:[],InvalidDests:[],IteratedDests:[],Color:"default",Frequency:0b,Reserved:0b,Private:0b,Owner_UUID:[I;0,0,0,0],AllSeeing:0b,Destructable:1b,SpamPunish:1b},Tags:["trident-entity.warppad.wp_pad","wp.pad","global.ignore","global.ignore.pos","global.forceload","wp.temp"]}
tag @e[tag=wp.temp] add trident-component.warppad.tier_0
tag @s add wp.mainitem
execute as @e[tag=wp.temp] at @s run function warppad:entities/warppad/wp_pad/construct
tag @s remove wp.mainitem
kill @s
execute as @e[tag=wp.temp] at @s if entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,tag=!wp.temp,distance=..2.9] run setblock ~ ~-1 ~ minecraft:air destroy
scoreboard players set @e[tag=wp.temp,limit=1] wp.spawn_anim 0
tag @e remove wp.temp
