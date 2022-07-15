execute store result score @s wp.x run data get entity @s Pos[0]
execute store result score @s wp.z run data get entity @s Pos[2]
execute store result score @s wp.linked_UUID run data get entity @s data.Owner_UUID[0]
scoreboard players add @s wp.spawn_anim 0
