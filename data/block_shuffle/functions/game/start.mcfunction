#> Set players blocks found to 0
scoreboard players set @a bs.blocks_found 0

#> Show players scores
scoreboard objectives setdisplay sidebar bs.blocks_found

#> Run specific game modes start function
execute if score #game_mode bs.settings matches 0 run function block_shuffle:game/mode_points/start
execute if score #game_mode bs.settings matches 1 run function block_shuffle:game/mode_time/start

#> Generate the blocks
function block_shuffle:game/generate_blocks

#> Set players blocks
execute as @a run function block_shuffle:game/get_next_block
function block_shuffle:game/tell_player_block

#> Check block the player is standing on
execute run function block_shuffle:game/check_block
