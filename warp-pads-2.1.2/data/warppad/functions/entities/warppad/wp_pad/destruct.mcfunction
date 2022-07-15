particle minecraft:witch ~ ~-1 ~ 0 0 0 0.5 25 normal @a[distance=..15]
function warppad:entities/warppad/wp_pad/chunk_unload
execute positioned ~ ~-1 ~ run function warppad:entities/warppad/wp_pad/destruct/_anonymous0
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light
kill @s
