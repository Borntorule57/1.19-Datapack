tag @s remove global.forceload
summon minecraft:marker ~ ~ ~ {Tags:["wp.locator"]}
execute as @e[type=minecraft:marker,tag=wp.locator,limit=1,distance=0..0.01] run function warppad:entities/warppad/wp_pad/chunk_unload/_anonymous0
