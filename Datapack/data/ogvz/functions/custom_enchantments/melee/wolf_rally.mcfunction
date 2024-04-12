# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:custom_enchantments/melee
# File Name: wolf_rally
# Function Name: ogvz:custom_enchantments/melee/wolf_rally
# File Purpose: Gives your Dogs Strength effect when you attack a player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:custom_enchantments/melee/wolf_rally

tag @s add temp_owner

execute as @e[type=minecraft:wolf,tag=summon,distance=..10] at @s on owner if entity @s[tag=temp_owner] as @e[type=minecraft:wolf,tag=summon,limit=1,sort=nearest] run effect give @s minecraft:strength 1 0

tag @s remove temp_owner