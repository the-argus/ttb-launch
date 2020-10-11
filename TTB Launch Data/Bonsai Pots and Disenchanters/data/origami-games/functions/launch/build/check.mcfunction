#checks the version and compares it to see if there is an update or a downdate
#called by launch/load

#store build number
scoreboard players operation build_number.prev lch_general = build_number lch_general
#update current build number ***MODIFY BUILD COUNT HERE***
scoreboard players set build_number lch_general 7
#if updating, send update message
execute if score build_number.prev lch_general < build_number lch_general run tellraw @a {"translate":"text.launch.update","hoverEvent":{"action":"show_text","value":"Click to view the changelogs"},"clickEvent":{"action":"open_url","value":"https://github.com/origami-games/launch/releases"},"color":"aqua"}
#if downdating, send warning message
execute if score build_number.prev lch_general > build_number lch_general run function origami-games:launch/build/downdating
#remove fake players
scoreboard players reset build_number.prev lch_general
#check server version
function origami-games:launch/build/server_version_check

#give feedback if ran by player and a build change has occured
tellraw @s[type=minecraft:player] [{"translate":"text.launch.update.build_number","color":"gray"},{"text":": ","color":"gray"},{"score":{"name":"build_number","objective":"lch_general"}},{"text":", ","color":"gray"},{"translate":"text.launch.update.server_version_number","color":"gray"},{"text":": 1.","color":"gray"},{"score":{"name":"server_version","objective":"lch_general"}}]
