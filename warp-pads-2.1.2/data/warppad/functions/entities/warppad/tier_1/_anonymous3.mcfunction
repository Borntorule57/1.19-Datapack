execute align xyz store success score #wp wp.math run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_block"}},dx=0,dy=0,dz=0]
execute if score #wp wp.math matches 1 run summon minecraft:item ~ ~ ~ {Tags:["wp.primary_item"],PickupDelay:25s,Item:{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{CustomModelData:290001,display:{Name:"{\"text\":\"Warp Pad\",\"italic\":false}",Lore:["{\"text\":\"Tier 2\"}","{\"text\":\"Range 25k\"}"]},EntityTag:{NoAI:1b,Silent:1b,Tags:["wp.spawn_1"]}}}}