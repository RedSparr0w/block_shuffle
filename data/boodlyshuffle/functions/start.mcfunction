
execute if score $init game_active matches 0 run function boodlyshuffle:pickblocks
execute if score $init game_active matches 0 run gamemode survival @a
execute if score $init game_active matches 0 run scoreboard players set @a Blocks_Found 0
execute if score $init game_active matches 0 run tag @a add neednewblock
execute if score $init game_active matches 0 run scoreboard objectives setdisplay sidebar Blocks_Found
execute if score $init game_active matches 0 run scoreboard players set $init game_active 1
