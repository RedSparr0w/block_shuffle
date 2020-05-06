#> Game Mode
#
# 0: Points Limit
# 1: Time Limit

#> Toggle our setting
execute if score #game_mode bs.settings matches 1 run scoreboard players set #game_mode bs.settings 100
execute if score #game_mode bs.settings matches 0 run scoreboard players set #game_mode bs.settings 1

#> Reset to first option
execute if score #game_mode bs.settings matches 100 run scoreboard players set #game_mode bs.settings 0

#> Show the settings menu
function block_shuffle:triggers/settings
