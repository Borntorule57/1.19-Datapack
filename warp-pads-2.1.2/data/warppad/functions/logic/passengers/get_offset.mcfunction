execute store result score @s wp.x_off run data get entity @s Pos[0] 10
execute store result score @s wp.x run data get entity @e[tag=wp.active,limit=1] Pos[0] 10
scoreboard players operation @s wp.x_off -= @s wp.x
execute store result score @s wp.z_off run data get entity @s Pos[2] 10
execute store result score @s wp.z run data get entity @e[tag=wp.active,limit=1] Pos[2] 10
scoreboard players operation @s wp.z_off -= @s wp.z
