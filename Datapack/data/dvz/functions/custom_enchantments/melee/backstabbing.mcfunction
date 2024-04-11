# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:custom_enchantments/melee
# File Name: backstabbing
# Function Name: dvz:custom_enchantments/melee/backstabbing
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

advancement revoke @s only dvz:custom_enchantments/melee/backstabbing

scoreboard objectives add dvz.rotation.p1.temp dummy
scoreboard objectives add dvz.rotation.p2.temp dummy

# Store the targeted player's rotation value.
execute store result score @s dvz.rotation.p2.temp run data get entity @s Rotation[0] 1000

# Store the attacking player's rotation value.
execute store result score @s dvz.rotation.p1.temp on attacker run data get entity @s Rotation[0] 1000

# Get the difference between the 2 rotation values.
scoreboard players operation @s dvz.rotation.p2.temp -= @s dvz.rotation.p1.temp

# Difference needs to be in [-180000,180000] range.
scoreboard players add @s[scores={dvz.rotation.p2.temp=..-180001}] dvz.rotation.p2.temp 360000
scoreboard players remove @s[scores={dvz.rotation.p2.temp=180001..}] dvz.rotation.p2.temp 360000

# Tag the attacking player, so damage can be correctly attributed to them.
execute on attacker run tag @s add temp_attacker

# Deal extra damage, play sound and show particles if the rotation difference is between ±50°.
execute as @s[scores={dvz.rotation.p2.temp=-50000..50000}] run damage @s 10 minecraft:player_attack by @p[tag=temp_attacker]
execute as @s[scores={dvz.rotation.p2.temp=-50000..50000}] at @s run playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 1
execute as @s[scores={dvz.rotation.p2.temp=-50000..50000}] at @s run particle minecraft:dust{color:[0.6,0.0,0.0],scale:1.0} ~ ~1.0 ~ 0.2 0.2 0.2 0 20

# Remove scoreboards.
scoreboard objectives remove dvz.rotation.p1.temp
scoreboard objectives remove dvz.rotation.p2.temp

# Remove tag.
tag @a remove temp_attacker