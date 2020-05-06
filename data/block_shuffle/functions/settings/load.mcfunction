#> Load our default settings
scoreboard players set #game_running bs.dummy 0
execute unless score #game_mode bs.settings matches 0.. run scoreboard players set #game_mode bs.settings 0
execute unless score #point_limit bs.settings matches 10.. run scoreboard players set #point_limit bs.settings 10
execute unless score #time_limit bs.settings matches 180.. run scoreboard players set #time_limit bs.settings 300
execute unless score #block_type bs.settings matches 0.. run scoreboard players set #block_type bs.settings 0
