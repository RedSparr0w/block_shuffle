#> Run specific block types function
execute if score #block_type bs.settings matches 0 run function block_shuffle:game/block_shared/generate_blocks
execute as @a if score #block_type bs.settings matches 1 run function block_shuffle:game/block_individual/generate_blocks
