title @a times 0 20 10
execute if score #countdown bs.start matches 1..5 run title @a subtitle [{"score":{"name":"#countdown","objective":"bs.start"},"color":"gold"},{"text":"..","color":"gold"}]
execute if score #countdown bs.start matches 0 run title @a subtitle {"text":"GO!","color":"green"}
title @a title {"text":" "}

scoreboard players remove #countdown bs.start 1

#> Rerun this function
execute if score #countdown bs.start matches 0.. run schedule function block_shuffle:generic/start_countdown 1s

#> Start the game
function block_shuffle:game/start

#> Reset the countdown score
execute if score #countdown bs.start matches -1 run scoreboard players reset #countdown bs.start
