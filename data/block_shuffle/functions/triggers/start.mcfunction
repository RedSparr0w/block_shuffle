#> TODO: check the game hasn't started already

#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.start 0

execute if score #game_running bs.dummy matches 0 run scoreboard players set #countdown bs.start 5
execute if score #game_running bs.dummy matches 0 run function block_shuffle:game/start_countdown
execute if score #game_running bs.dummy matches 1 run tellraw @s ["Game already started!"]

#> Toggle the game to be running
scoreboard players set #game_running bs.dummy 1

#> Show the updated menu
function block_shuffle:triggers/menu
