execute unless entity @s[nbt={data:{Frequency:0}}] run function warppad:entities/warppad/wp_pad/destruct/_anonymous0/_anonymous0
execute if entity @s[nbt={data:{Private:1b}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"default"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:air",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"red"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"green"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"purple"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"cyan"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"light_gray"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"gray"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"pink"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"lime"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"yellow"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"light_blue"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"magenta"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"orange"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"blue"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"brown"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"black"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Color:"white"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b},PickupDelay:25s}
execute if entity @s[nbt={data:{Reserved:1b}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b},PickupDelay:25s}
execute as @s run function warppad:entities/warppad/tdn_dispatch_event_wp_spawn_base_items
execute unless entity @s[nbt={CustomName:"{\"text\":\"Warp Pad\"}"}] run data modify entity @e[tag=wp.primary_item,limit=1,sort=nearest] Item.tag.display.Name set from entity @s CustomName
data modify entity @e[tag=wp.primary_item,limit=1,sort=nearest] Thrower set from entity @s data.Owner_UUID
tag @e remove wp.primary_item
