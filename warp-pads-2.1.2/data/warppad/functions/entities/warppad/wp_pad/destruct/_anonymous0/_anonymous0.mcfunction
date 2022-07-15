summon minecraft:item ~ ~ ~ {Tags:["wp.freq_item"],Item:{id:"minecraft:redstone",Count:1b},PickupDelay:25s}
data modify entity @e[tag=wp.freq_item,limit=1,sort=nearest] Item.Count set from entity @s data.Frequency
