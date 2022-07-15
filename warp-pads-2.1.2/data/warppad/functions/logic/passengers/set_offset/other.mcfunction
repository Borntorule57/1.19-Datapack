execute store result score @s wp.x run data get entity @s Pos[0] 10
scoreboard players operation @s wp.x_off += @s wp.x
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s wp.x_off
execute store result score @s wp.z run data get entity @s Pos[2] 10
scoreboard players operation @s wp.z_off += @s wp.z
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s wp.z_off
