#> Points Limit
#
# 10: 10 Points
# 20: 20 Points
# 30: 30 Points

#> Toggle our setting
execute if score #point_limit bs.settings matches 30 run scoreboard players set #point_limit bs.settings 100
execute if score #point_limit bs.settings matches 20 run scoreboard players set #point_limit bs.settings 30
execute if score #point_limit bs.settings matches 10 run scoreboard players set #point_limit bs.settings 20

#> Reset to first option
execute if score #point_limit bs.settings matches 100 run scoreboard players set #point_limit bs.settings 10

#> Show the settings menu
function block_shuffle:triggers/settings
