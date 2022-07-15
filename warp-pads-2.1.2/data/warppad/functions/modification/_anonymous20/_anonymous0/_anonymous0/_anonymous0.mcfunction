tag @s remove named_paper
data modify entity @s Item.tag.display.Name set from entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,limit=1,sort=nearest] CustomName
