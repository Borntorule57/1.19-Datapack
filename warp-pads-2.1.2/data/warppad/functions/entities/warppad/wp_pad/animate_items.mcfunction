execute if entity @s[scores={wp.spawn_anim=26..100}] run particle minecraft:portal ~ ~0.8 ~ 0.25 0 0.25 0.3 5 normal @a[distance=..15]
execute if entity @s[scores={wp.spawn_anim=11..100}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ~ ~0.0135 ~
execute if entity @s[scores={wp.spawn_anim=11..50}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={wp.spawn_anim=11..50}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^ ~18 ~
execute if entity @s[scores={wp.spawn_anim=11..50}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^ ~7.2 ~
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={wp.spawn_anim=1..10}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={wp.spawn_anim=1..10}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ~ ~-0.17 ~
execute if entity @s[scores={wp.spawn_anim=1..10}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.secondary_anim,distance=..2.5] at @s run tp @s ^ ^ ^-0.2
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.secondary_anim,distance=..2.5] at @s run tp @s ^ ^ ^0.02 ~4 ~
execute if entity @s[scores={wp.spawn_anim=51..100}] as @e[tag=wp.secondary_anim,distance=..2.5] at @s run tp @s ^ ^ ^0.2
execute if entity @s[scores={wp.spawn_anim=1}] run function warppad:entities/warppad/wp_pad/animate_items/_anonymous0
execute if entity @s[scores={wp.spawn_anim=1}] as @e[tag=wp.primary_anim,distance=..2.5] at @s run function warppad:entities/warppad/wp_pad/animate_items/_anonymous1
execute if entity @s[scores={wp.spawn_anim=50}] as @e[tag=wp.secondary_anim,distance=..2.5] at @s run function warppad:entities/warppad/wp_pad/animate_items/_anonymous2
