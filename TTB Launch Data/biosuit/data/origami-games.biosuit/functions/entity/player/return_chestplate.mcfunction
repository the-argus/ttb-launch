summon item ~ ~ ~ {PickupDelay:0,Tags:["bs_chestplate","bs_suit"],Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{HideFlags:3,Unbreakable:1b,display:{color:16777215}}},AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:10000,Operation:0,UUID:[I;6500637,-1329705773,-1376247898,1360832457],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1375493571,1259226751,-1486671626,1937154928],Slot:"chest"}]}
execute store result entity @e[type=item,tag=bs_chestplate,limit=1,sort=nearest] Item.tag.AttributeModifiers[{AttributeName:'minecraft:generic.armor'}].Amount double 1 run scoreboard players get @s bs_chest_armor
