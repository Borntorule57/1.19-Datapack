tag @s add wp.current_pad
execute as @a[distance=..25] if score @s wp.linked_UUID = @e[tag=wp.current_pad,limit=1] wp.linked_UUID run tag @s remove wp.maker
execute as @a[distance=..25] if score @s wp.linked_UUID = @e[tag=wp.current_pad,limit=1] wp.linked_UUID run tag @s add wp.maker
tag @s remove wp.current_pad
execute if entity @s[tag=trident-component.warppad.tier_0] run advancement grant @a[tag=wp.maker] only warppad:makepad/pad0
execute if entity @s[tag=trident-component.warppad.tier_1] run advancement grant @a[tag=wp.maker] only warppad:makepad/pad1
execute if entity @s[tag=trident-component.warppad.tier_2] run advancement grant @a[tag=wp.maker] only warppad:makepad/pad2
