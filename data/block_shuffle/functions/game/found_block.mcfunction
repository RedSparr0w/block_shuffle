#> Run specific game modes block found function
execute if score #game_mode bs.settings matches 0 run function block_shuffle:game_mode/points/found_block
execute if score #game_mode bs.settings matches 1 run function block_shuffle:game_mode/time/found_block
