execute as @a[scores={bs.menu=1..}] run function block_shuffle:triggers/menu
execute as @a[scores={bs.info=1..}] run function block_shuffle:triggers/info
execute as @a[scores={bs.settings=1..}] run function block_shuffle:triggers/settings
execute as @a[scores={bs.start=1..}] run function block_shuffle:triggers/start
execute as @a[scores={bs.end=1..}] run function block_shuffle:triggers/end

scoreboard players enable @a bs.menu
scoreboard players enable @a bs.info
scoreboard players enable @a bs.settings
scoreboard players enable @a bs.start
scoreboard players enable @a bs.end
