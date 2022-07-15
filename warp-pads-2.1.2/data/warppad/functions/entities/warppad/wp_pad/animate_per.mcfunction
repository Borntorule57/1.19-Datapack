execute as @e[tag=wp.pad,scores={wp.spawn_anim=1..}] run function warppad:entities/warppad/wp_pad/animate_per/_anonymous0
execute if entity @e[tag=wp.pad,scores={wp.spawn_anim=1..}] run schedule function warppad:entities/warppad/wp_pad/animate_per 1t append
