execute if entity @s[nbt={data:{Color:"default"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:air",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"red"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:red_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"green"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:green_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"purple"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:purple_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"cyan"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:cyan_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"light_gray"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:light_gray_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"gray"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:gray_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"pink"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:pink_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"lime"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:lime_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"yellow"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:yellow_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"light_blue"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:light_blue_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"magenta"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:magenta_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"orange"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:orange_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"blue"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:blue_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"brown"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:brown_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"black"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:black_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"white"}}] run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:white_dye",Count:1b},PickupDelay:25s}
data modify entity @s data.Color set value "gray"
execute at @e[tag=wp.chosen_item,limit=1] run particle minecraft:witch ~ ~ ~ 0 0 0 0.2 25 normal @a[distance=..15]
execute as @a[distance=..10] if score @s wp.linked_UUID = @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run tag @s remove wp.mod_thrower
execute as @a[distance=..10] if score @s wp.linked_UUID = @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run tag @s add wp.mod_thrower
tag @p[tag=!global.ignore.gui,tag=wp.mod_thrower] add wp.displaying_gui
tag @a[tag=wp.displaying_gui] add global.ignore.gui
title @a[tag=wp.displaying_gui,tag=wp.mod_thrower] actionbar {"text":"Warp Pad Color set to ","color":"dark_purple","extra":["Gray"]}
advancement grant @a[tag=wp.mod_thrower] only warppad:mods/color
kill @e[tag=wp.chosen_item]
