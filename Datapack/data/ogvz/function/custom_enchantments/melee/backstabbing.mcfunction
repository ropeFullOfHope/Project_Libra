# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:custom_enchantments/melee
# File Name: backstabbing
# Function Name: ogvz:custom_enchantments/melee/backstabbing
# File Purpose: Deals extra damage if player attacks from behind.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:custom_enchantments/melee/backstabbing

scoreboard objectives add temp.rotation.p1 dummy
scoreboard objectives add temp.rotation.p2 dummy

# Store the targeted player's rotation value.
execute store result score @s temp.rotation.p2 run data get entity @s Rotation[0] 1000

# Store the attacking player's rotation value.
execute store result score @s temp.rotation.p1 on attacker run data get entity @s Rotation[0] 1000

# Get the difference between the 2 rotation values.
scoreboard players operation @s temp.rotation.p2 -= @s temp.rotation.p1

# Difference needs to be in [-180000,180000] range.
scoreboard players add @s[scores={temp.rotation.p2=..-180001}] temp.rotation.p2 360000
scoreboard players remove @s[scores={temp.rotation.p2=180001..}] temp.rotation.p2 360000

# Tag the attacking player, so damage can be correctly attributed to them.
execute on attacker run tag @s add temp.attacker

# Deal extra damage, play sound and show particles if the rotation difference is between ±50°.
execute as @s[scores={temp.rotation.p2=-50000..50000}] run damage @s 10 minecraft:player_attack by @p[tag=temp.attacker]
execute as @s[scores={temp.rotation.p2=-50000..50000}] at @s run playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 1
execute as @s[scores={temp.rotation.p2=-50000..50000}] at @s run particle minecraft:dust{color:[0.6,0.0,0.0],scale:1.0} ~ ~1.0 ~ 0.2 0.2 0.2 0 20

# Remove scoreboards.
scoreboard objectives remove temp.rotation.p1
scoreboard objectives remove temp.rotation.p2

# Remove tag.
tag @a remove temp.attacker