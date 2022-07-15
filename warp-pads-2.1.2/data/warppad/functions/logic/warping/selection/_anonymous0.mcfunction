tp @s ^ ^ ^2 ~ ~
execute at @s as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_indicator,distance=..0.5,limit=1,sort=nearest] run function warppad:logic/warping/mark_selected
tp @s ^ ^ ^ ~ ~
