tag @p[tag=!global.ignore.gui,tag=wp.pilot,dx=0,dy=0,dz=0] add wp.displaying_warp_gui
tag @a[tag=wp.displaying_warp_gui] add global.ignore.gui
title @p[tag=wp.displaying_warp_gui,dx=0,dy=0,dz=0] actionbar {"text":"Destination: ","color":"gold","extra":[{"selector":"@s","color":"light_purple"}," at ",{"score":{"name":"@s","objective":"wp.x"},"color":"red"}," ",{"score":{"name":"@s","objective":"wp.z"},"color":"blue"}]}
