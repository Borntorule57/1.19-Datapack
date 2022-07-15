summon minecraft:marker ~ ~ ~ {CustomName:"[\"Warp Pad Icon Indicator\"]",CustomNameVisible:0b,data:{Color:"default",Home_UUID:[I;0,0,0,0],Associated_UUID:[I;0,0,0,0]},Tags:["trident-entity.warppad.wp_indicator","wp.warp_icon","wp.temp"]}
execute positioned ~ ~1.14 ~ facing entity @s feet run tp @e[tag=wp.temp] ^ ^ ^2 facing entity @s feet
execute align xyz run data modify entity @e[tag=wp.temp,limit=1] data.Home_UUID set from entity @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad,dx=0,dy=0,dz=0,limit=1] UUID
data modify entity @e[tag=wp.temp,limit=1] data.Associated_UUID set from entity @s UUID
data modify entity @e[tag=wp.temp,limit=1] CustomName set from entity @s CustomName
data modify entity @e[tag=wp.temp,limit=1] data.Color set from entity @s data.Color
scoreboard players operation @e[tag=wp.temp,limit=1] wp.x = @s wp.x
scoreboard players operation @e[tag=wp.temp,limit=1] wp.z = @s wp.z
execute if entity @s[scores={wp.temp_ID=1..}] run scoreboard players operation @e[tag=wp.temp,limit=1] wp.temp_ID = @s wp.temp_ID
scoreboard players add @e[type=minecraft:marker,tag=trident-entity.warppad.wp_pad] wp.temp_ID 0
execute if entity @s[scores={wp.temp_ID=0}] run function warppad:logic/warping/icon_align/_anonymous0/_anonymous0
tag @e remove wp.temp
