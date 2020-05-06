#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.menu 0

tellraw @s [" "]
tellraw @s ["",{"text":"===== Block Shuffle =====","bold":true,"color":"gold"}]

#> Show depending on game state
execute unless score #game_running bs.dummy matches 1 run tellraw @s [{"text":"[Start]","color":"green","clickEvent":{"action":"run_command","value":"/trigger bs.start"},"hoverEvent":{"action":"show_text","value":{"text":"Start the game!"}}}]
execute if score #game_running bs.dummy matches 1 run tellraw @s [{"text":"[End]","color":"red","clickEvent":{"action":"run_command","value":"/trigger bs.end"},"hoverEvent":{"action":"show_text","value":{"text":"End the game!"}}}]

tellraw @s [{"text":"[Information]","color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger bs.info"},"hoverEvent":{"action":"show_text","value":{"text":"Show datapack information"}}}]
tellraw @s [{"text":"[Settings]","color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger bs.settings"},"hoverEvent":{"action":"show_text","value":{"text":"Show datapack information"}}}]
tellraw @s [" "]
