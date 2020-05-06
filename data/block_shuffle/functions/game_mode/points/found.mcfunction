#> Check if the game is over and the player has won
execute if score @s bs.blocks_found = #point_limit bs.settings run tag @s add winner

#> Give the player their next block to find
#> TODO: get next block based on if shared or individual blocks
execute if entity @s[tag=!winner] run function block_shuffle:shared_block/get_next_block

#> Game over
execute if entity @s[tag=winner] run function block_shuffle:triggers/end
