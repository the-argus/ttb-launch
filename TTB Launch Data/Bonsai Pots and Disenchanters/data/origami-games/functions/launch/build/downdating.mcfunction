#notifies everyone that the pack has downdated and disables the pack
#called by launch/build/check if it finds you are downdating

tellraw @a {"translate":"text.launch.downdate","clickEvent":{"action":"open_url","value":"https://origami-games.github.io/changelogs/launch"},"color":"red"}
datapack disable "file/Launch (Data)"
tellraw @a {"translate":"text.launch.downdate.done","color":"green"}
scoreboard players operation build_number lch_general = build_number.prev lch_general
