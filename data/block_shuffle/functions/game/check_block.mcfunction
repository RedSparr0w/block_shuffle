#> Check player score, reduce functions needed to run
execute as @a[scores={bs.current_block=1..99}] run function block_shuffle:game/check_block/000
execute as @a[scores={bs.current_block=100..199}] run function block_shuffle:game/check_block/100
execute as @a[scores={bs.current_block=200..299}] run function block_shuffle:game/check_block/200
execute as @a[scores={bs.current_block=300..399}] run function block_shuffle:game/check_block/300
execute as @a[scores={bs.current_block=400..499}] run function block_shuffle:game/check_block/400
execute as @a[scores={bs.current_block=500..599}] run function block_shuffle:game/check_block/500
execute as @a[scores={bs.current_block=600..699}] run function block_shuffle:game/check_block/600
execute as @a[scores={bs.current_block=700..799}] run function block_shuffle:game/check_block/700

#> If any players found there block
execute as @a[tag=found] run function block_shuffle:game/found_block

#> Rerun this function every 10 ticks if the game is still ongoing
execute if score #game_running bs.dummy matches 1 run schedule function block_shuffle:game/check_block 10t

#> Debug - remove
execute if score #debug bs.settings matches 2.. run tell RedSparr0vv Checking Blocks
