clear @s minecraft:knowledge_book 1
give @s minecraft:shulker_spawn_egg{CustomModelData:290001,display:{Name:"{\"text\":\"Warp Pad\",\"italic\":false}",Lore:["{\"text\":\"Tier 2\"}","{\"text\":\"Range 25k\"}"]},EntityTag:{NoAI:1b,Silent:1b,Tags:["wp.spawn_1"]}}
advancement revoke @s only warppad:recipes/tier_1
recipe take @s warppad:tier_1
