scoreboard objectives add my_boolean dummy
execute unless score $init my_boolean matches 1 run function boodlyshuffle:scripts/init

execute if score $init game_active matches 0 run function boodlyshuffle:waitingtostart
execute if score $init game_active matches 1 run function boodlyshuffle:intro
execute if score $init game_active matches 9 run function boodlyshuffle:gameloop
execute if score $init game_active matches 10 run function boodlyshuffle:win
