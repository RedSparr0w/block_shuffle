#> Block Type
#
# 0: Shared
# 1: Individual

#> Toggle our setting
execute if score #block_type bs.settings matches 1 run scoreboard players set #block_type bs.settings 100
execute if score #block_type bs.settings matches 0 run scoreboard players set #block_type bs.settings 1

#> Reset to first option
execute if score #block_type bs.settings matches 100 run scoreboard players set #block_type bs.settings 0

#> Show the settings menu
function block_shuffle:triggers/settings
