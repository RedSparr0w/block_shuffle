execute if score $init game_active matches 1 run tellraw @a [{"text":"Find or craft your given block and stand on it to progress. Good luck and have fun!","color":"green"}]
execute if score $init game_active matches 1 run title @a reset
execute if score $init game_active matches 1 run title @a title {"text":"Welcome To","color":"gold"}
execute if score $init game_active matches 1 run title @a subtitle {"text":"The Boodly Shuffle","color":"dark_aqua","bold":true}
execute if score $init game_active matches 1 run schedule function boodlyshuffle:intro 6s
execute if score $init game_active matches 2 run title @a reset
execute if score $init game_active matches 2 run title @a title {"text":"First To 10 Wins!","color":"gold"}
execute if score $init game_active matches 2 run schedule function boodlyshuffle:intro 6s
execute if score $init game_active matches 3 run title @a title {"text":"Game Starts In","color":"gold"}
execute if score $init game_active matches 3 run title @a subtitle {"text":"5..","color":"white","bold":true}
execute if score $init game_active matches 3 run title @a times 0 21 0
execute if score $init game_active matches 3 run schedule function boodlyshuffle:intro 1s
execute if score $init game_active matches 4 run title @a title {"text":"Game Starts In","color":"gold"}
execute if score $init game_active matches 4 run title @a subtitle {"text":"4..","color":"white","bold":true}
execute if score $init game_active matches 4 run schedule function boodlyshuffle:intro 1s
execute if score $init game_active matches 5 run title @a title {"text":"Game Starts In","color":"gold"}
execute if score $init game_active matches 5 run title @a subtitle {"text":"3..","color":"white","bold":true}
execute if score $init game_active matches 5 run schedule function boodlyshuffle:intro 1s
execute if score $init game_active matches 6 run title @a title {"text":"Game Starts In","color":"gold"}
execute if score $init game_active matches 6 run title @a subtitle {"text":"2..","color":"white","bold":true}
execute if score $init game_active matches 6 run schedule function boodlyshuffle:intro 1s
execute if score $init game_active matches 7 run title @a title {"text":"Game Starts In","color":"gold"}
execute if score $init game_active matches 7 run title @a subtitle {"text":"1..","color":"white","bold":true}
execute if score $init game_active matches 7 run schedule function boodlyshuffle:intro 1s
execute if score $init game_active matches 8 run title @a subtitle {"text":"GO!","color":"green","bold":true}
execute if score $init game_active matches 8 run title @a reset
execute if score $init game_active matches 8 run clear @a
execute at @a if score $init game_active matches 8 run playsound minecraft:block.beacon.activate player @a ~ ~ ~
scoreboard players add $init game_active 1
