tag @s add wp.selected_icon
execute at @s unless entity @s[nbt={CustomName:"{\"text\":\"Warp Pad\"}"}] unless entity @e[tag=wp.name_display,distance=..0.001] if block ~ ~ ~ #warppad:icon_no_coll run function warppad:logic/warping/mark_selected/_anonymous0
execute at @e[tag=wp.selecting,limit=1] align xyz run function warppad:logic/warping/mark_selected/_anonymous1
