#called by ender_hit
#@s owner of the arrow

execute store result score $Pos0 ea_counter run data get entity @s Pos[0] 1000
execute store result score $Pos1 ea_counter run data get entity @s Pos[1] 1000
execute store result score $Pos2 ea_counter run data get entity @s Pos[2] 1000

tp @s @e[distance=..3,limit=1,sort=nearest,nbt={HurtTime:10s}]
