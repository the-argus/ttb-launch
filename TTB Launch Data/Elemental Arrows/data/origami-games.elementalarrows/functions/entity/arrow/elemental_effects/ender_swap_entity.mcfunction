#called by ender_hit
#@s target hit by arrow

execute store result entity @s Pos[0] double 0.001 run scoreboard players get $Pos0 ea_counter
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $Pos1 ea_counter
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $Pos2 ea_counter
