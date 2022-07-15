tag @e[type=minecraft:item,tag=!global.ignore,tag=!global.ignore.kill,nbt={Item:{id:"minecraft:cyan_dye",Count:1b}},nbt={Item:{Count:1b}},dx=0,dy=0,dz=0,limit=1] add wp.chosen_item
execute store result score @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run data get entity @e[tag=wp.chosen_item,limit=1] Thrower[0]
execute if score @s wp.linked_UUID = @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run function warppad:modification/_anonymous4/_anonymous0
tag @e remove wp.chosen_item
