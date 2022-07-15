schedule clear warppad:logic/warping/surprise_players
schedule function warppad:logic/warping/surprise_players 5s append
schedule clear warppad:logic/warping/tick_cool_down
execute if entity @a[scores={wp.cooldown=1..}] run schedule function warppad:logic/warping/tick_cool_down 5t append
execute if entity @a[scores={wp.spamcount=1..}] run schedule function warppad:logic/warping/tick_cool_down 5t append
