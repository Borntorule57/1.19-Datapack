clear @s minecraft:knowledge_book 1
give @s minecraft:drowned_spawn_egg{CustomModelData:290002,display:{Name:"{\"text\":\"Warp Pad\",\"italic\":false}",Lore:["{\"text\":\"Tier 3\"}","{\"text\":\"Range ∞\"}"]},EntityTag:{NoAI:1b,Silent:1b,Tags:["wp.spawn_2"]}}
advancement revoke @s only warppad:recipes/tier_2
recipe take @s warppad:tier_2
