stopsound @a[distance=..10] hostile
stopsound @a[distance=..10] neutral
playsound minecraft:block.amethyst_block.place block @a[distance=..10] ~ ~ ~ 1 0.75
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_star",Count:1b},Tags:["wp.fake_spawn_item"],PickupDelay:-32767s}
execute unless entity @s[nbt={CustomName:"{\"italic\":false,\"text\":\"Warp Pad\"}"}] run data modify entity @e[tag=wp.fake_spawn_item,limit=1,sort=nearest] Item.tag.display.Name set from entity @s CustomName
execute as @e[tag=wp.fake_spawn_item,limit=1,sort=nearest] run function warppad:creation/_anonymous4/_anonymous0
tp @s ~ -1000.0 ~
kill @s
