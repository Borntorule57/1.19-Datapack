scoreboard players remove @a[scores={wp.cooldown=1..}] wp.cooldown 1
scoreboard players remove @a[scores={wp.spamcount=1..}] wp.spamcount 2
execute as @a[scores={wp.spamcount=100..}] run function warppad:logic/warping/tick_cool_down/_anonymous0
tag @a[scores={wp.cooldown=0}] remove wp.spammed
schedule clear warppad:logic/warping/tick_cool_down
execute if entity @a[scores={wp.cooldown=1..}] run schedule function warppad:logic/warping/tick_cool_down 5t append
execute if entity @a[scores={wp.spamcount=1..}] run schedule function warppad:logic/warping/tick_cool_down 5t append
