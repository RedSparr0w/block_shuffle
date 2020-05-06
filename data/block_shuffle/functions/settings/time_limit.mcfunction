#> Time Limit
#
# 180: 3 Minutes
# 300: 5 Minutes
# 420: 7 Minutes
# 600: 10 Minutes

#> Toggle our setting
execute if score #time_limit bs.settings matches 600 run scoreboard players set #time_limit bs.settings 0
execute if score #time_limit bs.settings matches 420 run scoreboard players set #time_limit bs.settings 600
execute if score #time_limit bs.settings matches 300 run scoreboard players set #time_limit bs.settings 420
execute if score #time_limit bs.settings matches 180 run scoreboard players set #time_limit bs.settings 300

#> Reset to first option
execute if score #time_limit bs.settings matches 0 run scoreboard players set #time_limit bs.settings 180

#> Show the settings menu
function block_shuffle:triggers/settings
