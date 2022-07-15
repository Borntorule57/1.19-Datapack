execute unless entity @s[nbt={CustomName:"{\"text\":\"Warp Pad\"}"}] positioned ~0.5 ~0.5 ~0.5 run function warppad:modification/_anonymous20/_anonymous0/_anonymous0
data modify entity @s CustomName set from entity @e[tag=wp.chosen_item,limit=1] Item.tag.display.Name
execute at @e[tag=wp.chosen_item,limit=1] run particle minecraft:witch ~ ~ ~ 0 0 0 0.2 25 normal @a[distance=..15]
execute as @a[distance=..10] if score @s wp.linked_UUID = @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run tag @s remove wp.mod_thrower
execute as @a[distance=..10] if score @s wp.linked_UUID = @e[tag=wp.chosen_item,limit=1] wp.linked_UUID run tag @s add wp.mod_thrower
tag @p[tag=!global.ignore.gui,tag=wp.mod_thrower] add wp.displaying_gui
tag @a[tag=wp.displaying_gui] add global.ignore.gui
title @a[tag=wp.displaying_gui,tag=wp.mod_thrower] actionbar {"text":"Warp Pad renamed to ","color":"dark_purple","extra":[{"selector":"@s"}]}
advancement grant @a[tag=wp.mod_thrower] only warppad:mods/rename
kill @e[tag=wp.chosen_item]
