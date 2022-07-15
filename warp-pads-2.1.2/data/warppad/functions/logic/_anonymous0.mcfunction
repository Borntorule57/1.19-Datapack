tag @s[tag=!global.ignore.gui] add wp.displaying_spam_gui
tag @s[tag=wp.displaying_spam_gui] add global.ignore.gui
scoreboard players operation @s[tag=wp.displaying_spam_gui] wp.math = @s[tag=wp.displaying_spam_gui] wp.cooldown
scoreboard players operation @s[tag=wp.displaying_spam_gui] wp.math /= #4 tdn_const
scoreboard players add @s[tag=wp.displaying_spam_gui] wp.math 1
title @s[tag=wp.displaying_spam_gui] actionbar {"text":"You have warped too fast! Please wait ","color":"gold","extra":[{"score":{"name":"@s","objective":"wp.math"},"color":"red"}," seconds."]}
