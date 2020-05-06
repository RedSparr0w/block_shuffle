execute at @a[tag=winner] run title @a title {"text":"","color":"gold","extra":[{"selector":"@p[tag=winner]"},{"text":" Wins!"}]}

#> End the game, stop our functions
scoreboard players set #game_running bs.dummy 0
