scoreboard objectives remove my_boolean
scoreboard objectives remove random
scoreboard objectives remove game_active
scoreboard players set $init game_active 0
scoreboard objectives remove block1
scoreboard objectives remove block2
scoreboard objectives remove block3
scoreboard objectives remove block4
scoreboard objectives remove block5
scoreboard objectives remove block6
scoreboard objectives remove block7
scoreboard objectives remove block8
scoreboard objectives remove block9
scoreboard objectives remove block10
scoreboard objectives remove currentblock
scoreboard objectives remove Blocks_Found
scoreboard objectives remove clicks
scoreboard objectives remove sticks_given
tag @a remove neednewblock
tag @a remove looking
tellraw @a [{"text":"Boodly Shuffle Uninstalled.\nUse /datapack enable \"file/Boodly_Shuffle\" to reinstall","color":"yellow"}]

datapack disable "file/Boodly Shuffle.zip"
