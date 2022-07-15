forceload add ~ ~
data modify entity @s data.Frequency set value 0
execute store result score @s wp.x run data get entity @s Pos[0]
execute store result score @s wp.z run data get entity @s Pos[2]
data modify entity @s data.Owner_UUID set from entity @e[tag=wp.mainitem,limit=1] Thrower
execute store result score @s wp.linked_UUID run data get entity @s data.Owner_UUID[0]
execute store result score @s wp.UUID run data get entity @s UUID[0]
data modify entity @s CustomName set from entity @e[tag=wp.mainitem,limit=1] Item.tag.display.Name
