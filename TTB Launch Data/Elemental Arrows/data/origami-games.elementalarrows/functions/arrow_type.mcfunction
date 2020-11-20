#set the player's ea_arrow_type score to different numbers which correspond to types of elemental arrows
execute if data storage origami-games.elementalarrows:type {type:"lightning"} run scoreboard players set @s ea_arrow_type 1
execute if data storage origami-games.elementalarrows:type {type:"ender"} run scoreboard players set @s ea_arrow_type 2
