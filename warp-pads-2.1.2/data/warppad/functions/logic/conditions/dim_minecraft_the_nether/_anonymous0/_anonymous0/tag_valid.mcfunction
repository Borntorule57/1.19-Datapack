tag @s add wp.valid_dest
data modify entity @e[tag=wp.processing,limit=1] data.ValidDests append from entity @s UUID[0]
