#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.end 0

#> Show the winner (if there was one)
title @a times 20 100 20
execute at @a[tag=winner] run title @a title {"text":"","color":"gold","extra":[{"selector":"@p[tag=winner]"},{"text":" Wins!"}]}
tag @a[tag=winner] remove winner

#> Hide the sidebar
scoreboard objectives setdisplay sidebar

#> End the game, stop our functions
scoreboard players set #game_running bs.dummy 0

#> Debug - remove
execute if score #debug bs.settings matches 1.. run tell RedSparr0vv Game Over!

#> Show the menu
function block_shuffle:triggers/menu
