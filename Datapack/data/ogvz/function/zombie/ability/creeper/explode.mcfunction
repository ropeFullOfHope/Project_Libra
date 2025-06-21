# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode
# Function Name: ogvz:zombie/ability/creeper/explode
# File Purpose: Explode the player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove the item.
item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

# Clear dwarf blocks around the player to promote blowing up keep walls.
fill ~ ~ ~-1 ~ ~1 ~1 minecraft:air replace #ogvz:dwarf_blocks
fill ~-1 ~ ~ ~1 ~1 ~ minecraft:air replace #ogvz:dwarf_blocks

# Summon an invisible tnt that will explode on the next tick and set it's owner nbt to the player's UUID.
summon minecraft:tnt ~ ~ ~ {fuse:0,explosion_power:3,Tags:["temp.processing"],block_state:{Name:"minecraft:air"}}
data modify entity @n[type=minecraft:tnt,tag=temp.processing] owner set from entity @s UUID
tag @n[type=minecraft:tnt,tag=temp.processing] remove temp.processing
