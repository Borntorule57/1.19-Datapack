tag @s add wp.invalid_dest
data modify entity @e[tag=wp.processing,limit=1] data.InvalidDests append from entity @s UUID[0]
