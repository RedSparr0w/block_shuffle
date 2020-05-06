#> Create scoreboards for player info
##> Player score
scoreboard objectives add bs.blocks_found dummy
scoreboard objectives modify bs.blocks_found displayname {"text":"Blocks Found","color":"gold"}
##> Player current block
scoreboard objectives add bs.current_block dummy
##> General use
scoreboard objectives add bs.dummy dummy

#> Add triggers
##> Settings
scoreboard objectives add bs.settings trigger
##> Show the menu
scoreboard objectives add bs.menu trigger
##> Show datapack information
scoreboard objectives add bs.info trigger
##> Start game
scoreboard objectives add bs.start trigger
##> End game
scoreboard objectives add bs.end trigger

#> Load default settings
function block_shuffle:settings/load

#> Show menu to players
execute as @a run function block_shuffle:triggers/menu

#> Start our slower tick functions
function block_shuffle:tick_1s
