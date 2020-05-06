#> Run specific game modes start function
execute if score #game_mode bs.settings matches 0 run function block_shuffle:game/mode_points/start
execute if score #game_mode bs.settings matches 1 run function block_shuffle:game/mode_time/start
