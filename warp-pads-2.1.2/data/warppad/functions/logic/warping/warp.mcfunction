tag @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad] remove wp.dest_pad
execute positioned ~ ~1.14 ~ as @e[tag=wp.selected_icon,distance=..2.1,limit=1,sort=nearest] as @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,scores={wp.temp_ID=1..}] if score @s wp.temp_ID = @e[tag=wp.selected_icon,distance=..2.1,limit=1,sort=nearest] wp.temp_ID run tag @s add wp.dest_pad
execute if entity @e[tag=wp.dest_pad] run function warppad:entities/warppad/wp_pad/inc_spam
execute if entity @e[tag=wp.dest_pad] align y as @e[tag=!wp.pilot,type=!#warppad:nonwarpable,tag=!global.ignore,tag=!global.ignore.pos,distance=..2] positioned ~-2 ~ ~-2 run tag @s[dx=4,dy=0,dz=4] add wp.passenger
execute as @e[tag=wp.passenger] run function warppad:logic/passengers/get_offset
execute if entity @e[tag=wp.dest_pad] align xyz as @e[tag=wp.pilot,dx=0,dy=0,dz=0] at @e[tag=wp.dest_pad,limit=1] run function warppad:logic/warping/teleport
execute align xyz if entity @e[tag=trident-component.warppad.tier_2,dx=0,dy=0,dz=0] as @a[tag=wp.pilot,nbt={SelectedItem:{id:"minecraft:poppy"}},distance=50000..] run advancement grant @s only warppad:challenges/warp50000
tag @e remove wp.passenger
