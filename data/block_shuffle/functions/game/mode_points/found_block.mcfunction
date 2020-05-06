#> Check if the game is over and the player has won
execute if score @s bs.blocks_found = #point_limit bs.settings run tag @s add winner

#> Give the player their next block to find
execute if entity @s[tag=!winner] run function block_shuffle:game/get_next_block

#> Game over
execute if entity @s[tag=winner] run function block_shuffle:triggers/end

#> Debug - remove
execute if score #debug bs.settings matches 1.. run tell RedSparr0vv Found Block! [Points Mode]
