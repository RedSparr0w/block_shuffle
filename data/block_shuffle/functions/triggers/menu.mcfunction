#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.menu 0

tellraw @s [" "]
tellraw @s ["",{"text":"===== Block Shuffle =====","bold":true,"color":"gold"}]
#> TODO: show start text if game not started, show end text if game started
tellraw @s [{"text":"[Start]","color":"green","clickEvent":{"action":"run_command","value":"/trigger bs.start"},"hoverEvent":{"action":"show_text","value":{"text":"Start the game!"}}}]
tellraw @s [{"text":"[End]","color":"green","clickEvent":{"action":"run_command","value":"/trigger bs.end"},"hoverEvent":{"action":"show_text","value":{"text":"End the game!"}}}]
tellraw @s [{"text":"[information]","color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger bs.info"},"hoverEvent":{"action":"show_text","value":{"text":"Show datapack information"}}}]
tellraw @s [" "]
