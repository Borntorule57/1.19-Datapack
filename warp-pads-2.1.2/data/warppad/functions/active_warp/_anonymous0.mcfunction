execute align xyz unless entity @p[tag=wp.pilot,dx=0,dy=0,dz=0] run tag @p[dx=0,dy=0,dz=0,scores={wp.cooldown=0}] add wp.pilot
fill ~ ~ ~ ~ ~ ~ minecraft:light[level=12] replace #warppad:air
function warppad:logic/warping/selection
execute align xyz if entity @p[tag=wp.pilot,dx=0,dy=0,dz=0,scores={wp.player_launch=1..}] at @s run function warppad:logic/warping/warp
execute at @e[type=minecraft:marker,tag=trident-entity.warppad.wp_indicator,tag=!wp.selected_icon] run kill @e[tag=wp.name_display,distance=..0.001]
scoreboard players set @a wp.player_launch 0
