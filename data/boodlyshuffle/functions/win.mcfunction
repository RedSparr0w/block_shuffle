tag @a remove neednewblock
tag @a remove looking
tag @a remove found
scoreboard players set $init game_active 11
title @a reset
execute at @a[tag=winner] run title @a title {"text":"","color":"gold","extra":[{"selector":"@p[tag=winner]"},{"text":" Wins!"}]}
execute at @a[tag=winner] run tellraw @a {"text":"","color":"green","extra":[{"selector":"@p[tag=winner]"},{"text":" is the Winner! I hope you had fun. Make a new game to play again."}]}
tag @a remove winner
