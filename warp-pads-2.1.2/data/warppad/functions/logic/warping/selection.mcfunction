execute positioned ~ ~1.14 ~ run tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_indicator,distance=..2.1] remove wp.selected_icon
tag @s add wp.selecting
execute align xyz at @p[tag=wp.pilot,dx=0,dy=0,dz=0] positioned ~ ~1.64 ~ as @e[tag=wp.selector,limit=1,sort=nearest] run function warppad:logic/warping/selection/_anonymous0
tag @s remove wp.selecting
execute positioned ~ ~1.14 ~ unless entity @e[tag=wp.selected_icon,distance=..2.1] run title @a[tag=wp.displaying_warp_gui] actionbar ""
