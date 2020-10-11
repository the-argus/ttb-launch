scoreboard players operation $scaledOxygen bs_oxygen = @s bs_oxygen
scoreboard players operation $scaledOxygen bs_oxygen *= $const10 bs_counter
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold10 bs_counter if score $scaledOxygen bs_oxygen > $threshold9 bs_counter run title @s actionbar {"text":"▇▇Oxygen▇▇","color":"#19E3C1"}
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold9 bs_counter if score $scaledOxygen bs_oxygen > $threshold8 bs_counter run title @s actionbar [{"text":"▇▇Oxygen▇","color":"#19E3C1"},{"text":"▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold8 bs_counter if score $scaledOxygen bs_oxygen > $threshold7 bs_counter run title @s actionbar [{"text":"▇▇Oxygen","color":"#19E3C1"},{"text":"▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold7 bs_counter if score $scaledOxygen bs_oxygen > $threshold6 bs_counter run title @s actionbar [{"text":"▇▇Oxyge","color":"#19E3C1"},{"text":"n▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold6 bs_counter if score $scaledOxygen bs_oxygen > $threshold5 bs_counter run title @s actionbar [{"text":"▇▇Oxyg","color":"#19E3C1"},{"text":"en▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold5 bs_counter if score $scaledOxygen bs_oxygen > $threshold4 bs_counter run title @s actionbar [{"text":"▇▇Oxy","color":"#19E3C1"},{"text":"gen▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold4 bs_counter if score $scaledOxygen bs_oxygen > $threshold3 bs_counter run title @s actionbar [{"text":"▇▇Ox","color":"#4DFF17"},{"text":"ygen▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold3 bs_counter if score $scaledOxygen bs_oxygen > $threshold2 bs_counter run title @s actionbar [{"text":"▇▇O","color":"#FFD324"},{"text":"xygen▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold2 bs_counter if score $scaledOxygen bs_oxygen > $threshold1 bs_counter run title @s actionbar [{"text":"▇▇","color":"#FFAE21"},{"text":"Oxygen▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold1 bs_counter run title @s actionbar [{"text":"▇","color":"#FF5A1F"},{"text":"▇Oxygen▇▇","color":"white"}]
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen matches ..0 run title @s actionbar {"text":"Oxygen Depleted","color":"#E32739"}

execute if entity @s[gamemode=survival] if score @s bs_oxygen matches ..0 run effect give @s minecraft:wither 1 1 true
execute if entity @s[gamemode=survival] if score $scaledOxygen bs_oxygen <= $threshold4 bs_counter run effect give @s minecraft:slowness 1 1 true
