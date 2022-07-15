tag @s add wp.test_dim
execute unless entity @e[tag=wp.test_dim,distance=0..] run tag @s add wp.early_exclude
tag @s remove wp.test_dim
