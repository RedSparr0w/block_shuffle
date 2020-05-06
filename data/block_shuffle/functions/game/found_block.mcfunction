execute at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~
scoreboard players add @s bs.blocks_found 1
tellraw @a {"text":"","color":"gold","bold":true,"extra":[{"selector":"@s"},{"text":" found their block!"}]}

#> Run specific game modes block found function
execute if score #game_mode bs.settings matches 0 run function block_shuffle:game/mode_points/found_block
execute if score #game_mode bs.settings matches 1 run function block_shuffle:game/mode_time/found_block

#> Remove the tag
tag @s remove found
