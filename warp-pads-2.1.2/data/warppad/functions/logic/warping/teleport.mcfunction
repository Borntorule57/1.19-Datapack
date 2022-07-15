tp @s ~ ~-0.5 ~
tp @e[tag=wp.passenger] ~ ~-0.5 ~
execute as @e[tag=wp.passenger] run function warppad:logic/passengers/set_offset
advancement grant @s only warppad:actions/warp
execute at @a[tag=wp.passenger] run scoreboard players add @s wp.pass_count 1
advancement grant @s[scores={wp.pass_count=3..}] only warppad:challenges/group
scoreboard players set @a wp.pass_count 0
execute if entity @e[tag=wp.passenger,type=minecraft:wolf] run advancement grant @s only warppad:actions/dog
execute if entity @e[tag=wp.passenger,type=minecraft:creeper] run advancement grant @s only warppad:challenges/creep
execute if entity @a[tag=wp.passenger] if entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,nbt={data:{Private:0b}}] run advancement grant @s only warppad:actions/privpass
advancement grant @a[tag=wp.passenger] only warppad:actions/passenger
execute unless entity @a[scores={wp.cooldown=1..}] run schedule function warppad:logic/warping/tick_cool_down 5t append
scoreboard players set @s wp.cooldown 3
scoreboard players add @s wp.spamcount 1
scoreboard players set @s wp.player_launch 0
