#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.settings 0

#> List our settings
tellraw @s [" "]
tellraw @s [{"text":"===== Settings =====","color":"gold"}]

execute if score #game_mode bs.settings matches 1 run tellraw @s [{"text":"Game mode: ","hoverEvent":{"action":"show_text","value":{"text":"Game mode"}}},{"text":"[Point Limit]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/game_mode"},"hoverEvent":{"action":"show_text","value":{"text":"Once 1 player finds a specified amount of blocks, they win"}}}]
execute if score #game_mode bs.settings matches 0 run tellraw @s [{"text":"Game mode: ","hoverEvent":{"action":"show_text","value":{"text":"Game mode"}}},{"text":"[Time Limit]","color":"aqua","clickEvent":{"action":"run_command","value":"/function block_shuffle:settings/game_mode"},"hoverEvent":{"action":"show_text","value":{"text":"Each player will have a specified amount of time to find their block, if you run out of time, you lose"}}}]

tellraw @s [" "]
