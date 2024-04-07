# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: drop_armor
# Function Name:
# File Purpose: Drops the player's armor.
# Created By: ropeFullOfHope
# 
# Created On: 2024.04.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Store inventory and uuid.
data modify storage dvz:data temp.inventory set from entity @s Inventory
data modify storage dvz:data temp.uuid set from entity @s UUID

# Drop boots.
execute if items entity @s armor.feet * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Item set from storage dvz:data temp.inventory[{Slot:100b}]
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Owner set from storage dvz:data temp.uuid
tag @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] remove temp.replace
item replace entity @s armor.feet with minecraft:air

# Drop leggings.
execute if items entity @s armor.legs * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Item set from storage dvz:data temp.inventory[{Slot:101b}]
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Owner set from storage dvz:data temp.uuid
tag @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] remove temp.replace
item replace entity @s armor.legs with minecraft:air

# Drop chestplate.
execute if items entity @s armor.chest * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Item set from storage dvz:data temp.inventory[{Slot:102b}]
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Owner set from storage dvz:data temp.uuid
tag @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] remove temp.replace
item replace entity @s armor.chest with minecraft:air

# Drop helmet.
execute if items entity @s armor.head * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Item set from storage dvz:data temp.inventory[{Slot:103b}]
data modify entity @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] Owner set from storage dvz:data temp.uuid
tag @e[type=minecraft:item,tag=temp.replace,limit=1,sort=nearest] remove temp.replace
item replace entity @s armor.head with minecraft:air

# Remove temporary storage.
data remove storage dvz:data temp
