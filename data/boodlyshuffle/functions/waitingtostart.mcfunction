scoreboard objectives add clicks minecraft.used:minecraft.carrot_on_a_stick
execute as @a if score $init sticks_given matches 0 run give @a minecraft:carrot_on_a_stick{display:{Name:'{"text":"Starting Stick","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"Right Click To Start The Game","color":"aqua","bold":true}']},HideFlags:5,Unbreakable:1b,CustomModelData:123456,startingstick:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10s}]} 1
execute as @a if score $init sticks_given matches 0 run scoreboard players set $init sticks_given 1

execute at @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run summon firework_rocket ~-1 ~1 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;2651799]}]}}}}
execute at @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run summon firework_rocket ~1 ~1 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;2651799]}]}}}}
execute at @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run summon firework_rocket ~ ~1 ~1 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;2651799]}]}}}}
execute at @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run summon firework_rocket ~1 ~1 ~1 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;2651799]}]}}}}
execute as @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] at @s run function boodlyshuffle:start
execute as @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run clear
execute as @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run scoreboard objectives remove sticks_given
execute as @a[scores={clicks=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{startingstick:1b}}}] run scoreboard objectives remove clicks
