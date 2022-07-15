schedule function warppad:logic 10t append
scoreboard players set @a wp.player_launch 0
scoreboard players add @a wp.cooldown 0
execute at @a[tag=!global.ignore.pos,predicate=warppad:potential_warp,scores={wp.cooldown=0}] align xyz run tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,dx=0,dy=0,dz=0,scores={wp.spawn_anim=0}] add wp.active
execute as @e[tag=wp.displaying_spam_gui,tag=!wp.spammed] run function warppad:logic/remove_spam_text
execute as @e[tag=wp.displaying_spam_gui,predicate=!warppad:potential_warp] run function warppad:logic/remove_spam_text
execute as @a[tag=wp.spammed,tag=!global.ignore.pos,predicate=warppad:potential_warp] at @s align xyz if entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,dx=0,dy=0,dz=0,scores={wp.spawn_anim=0}] run function warppad:logic/_anonymous0
execute unless entity @e[tag=wp.active] run scoreboard players set @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad] wp.temp_ID 0
execute as @e[tag=wp.active] at @s align xyz unless entity @p[dx=0,dy=0,dz=0] run function warppad:logic/_anonymous1
execute as @e[tag=wp.selector] at @s unless entity @e[tag=wp.active,distance=..5] run kill @s
execute as @e[tag=wp.name_display] at @s unless entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_indicator,distance=..0.001] run tp @s ~ -1000.0 ~
kill @s
execute unless entity @e[tag=wp.active] run scoreboard players set @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad] wp.temp_ID 0
execute as @a at @s align xyz unless entity @e[tag=wp.active,dx=0,dy=0,dz=0] run function warppad:logic/_anonymous2
execute as @e[tag=wp.active,tag=!wp.processed] at @s run function warppad:logic/_anonymous3
