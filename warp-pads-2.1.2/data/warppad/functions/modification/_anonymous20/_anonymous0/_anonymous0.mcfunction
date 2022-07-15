summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b},PickupDelay:25s,Tags:["wp.pad","named_paper"]}
execute as @e[type=minecraft:item,tag=named_paper,limit=1,distance=0..0.01] run function warppad:modification/_anonymous20/_anonymous0/_anonymous0/_anonymous0
