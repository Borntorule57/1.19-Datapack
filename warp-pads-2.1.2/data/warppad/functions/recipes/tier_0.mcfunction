clear @s minecraft:knowledge_book 1
give @s minecraft:blaze_spawn_egg{CustomModelData:290000,display:{Name:"{\"text\":\"Warp Pad\",\"italic\":false}",Lore:["{\"text\":\"Tier 1\"}","{\"text\":\"Range 1k\"}"]},EntityTag:{NoAI:1b,Silent:1b,Tags:["wp.spawn_0"]}}
advancement revoke @s only warppad:recipes/tier_0
recipe take @s warppad:tier_0
