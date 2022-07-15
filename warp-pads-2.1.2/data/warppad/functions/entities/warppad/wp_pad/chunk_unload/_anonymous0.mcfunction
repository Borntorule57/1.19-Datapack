tag @s remove wp.locator
execute store result score #pos wp.math run data get entity @s Pos[0]
scoreboard players operation #pos wp.math /= #16 tdn_const
execute store result entity @s Pos[0] double 16 run scoreboard players get #pos wp.math
execute store result score #pos wp.math run data get entity @s Pos[2]
scoreboard players operation #pos wp.math /= #16 tdn_const
execute store result entity @s Pos[2] double 16 run scoreboard players get #pos wp.math
data modify entity @s Pos[1] set value -64.0d
execute at @s unless entity @e[tag=global.forceload,dx=15,dy=319,dz=15] run forceload remove ~ ~
kill @s
