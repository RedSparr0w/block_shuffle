#> TODO: check the game hasn't started already

#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s bs.start 0

scoreboard players set #countdown bs.start 5
function block_shuffle:generic/start_countdown
