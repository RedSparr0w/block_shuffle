#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.info 0

tellraw @s [" "]
tellraw @s {"text":"===== Block Shuffle Information =====","bold":true,"color":"gold"}
tellraw @s ["Welcome to Block Shuffle,"]
tellraw @s ["I need to add some information here.."]
tellraw @s [" "]
tellraw @s {"text":"===== Credits =====","bold":true,"color":"gold"}
tellraw @s {"text":"RedSparr0w#0167","color":"red","clickEvent":{"action":"copy_to_clipboard","value":"RedSparr0w#0167"},"hoverEvent":{"action":"show_text","contents":"[Discord ID] Click to copy"}}
tellraw @s {"text":"Boodly","color":"red","clickEvent":{"action":"copy_to_clipboard","value":"https://www.youtube.com/channel/UC5YgDdWRK9bZSvvMoGvlU3Q"},"hoverEvent":{"action":"show_text","contents":"[YouTube] Click to copy"}}
tellraw @s [" "]
