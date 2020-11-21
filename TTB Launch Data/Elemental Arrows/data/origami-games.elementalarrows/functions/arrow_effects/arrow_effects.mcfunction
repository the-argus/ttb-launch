execute if score @s ea_arrow_type matches 1 as @e[type=arrow,sort=nearest,limit=1] at @s run function origami-games.elementalarrows:arrow_effects/lightning_fired
execute if score @s ea_arrow_type matches 2 as @e[type=arrow,sort=nearest,limit=1] at @s run function origami-games.elementalarrows:arrow_effects/ender_fired
execute if score @s ea_arrow_type matches 3 as @e[type=arrow,sort=nearest,limit=1] at @s run function origami-games.elementalarrows:arrow_effects/torch_fired


#reset the bow tracking scoreboard
scoreboard players set @s ea_fired 0
