#> Toggle our setting
execute if score #game_mode bs.settings matches 1 run scoreboard players set #game_mode bs.settings 2
execute if score #game_mode bs.settings matches 0 run scoreboard players set #game_mode bs.settings 1

#> Reset to first option
execute if score #game_mode bs.settings matches 2 run scoreboard players set #game_mode bs.settings 0

function block_shuffle:triggers/settings
