# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_bar
# Function Name: dvz:misc/mana_bar
# File Purpose: Displays the amount of mana you have on you experience bar (capped at level 100)
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Create a temporary scoreboard.
scoreboard objectives add dvz.mana.temp dummy

# Save the player's current mana into the scoreboard.
execute store result score @s dvz.mana.temp run experience query @s levels

# Copy the value to another scoreboard.
execute store result score @s dvz.var run scoreboard players get @s dvz.mana.temp

# Set the player's exp level to 51 (301 exp to level up).
experience set @s 51 levels

# Reset bar.
experience set @s 0 points

# Properly set the exp bar.
execute as @s[scores={dvz.var=100..}] run experience add @s 300 points
execute as @s[scores={dvz.var=100..}] run scoreboard players set @s dvz.var 0
execute as @s[scores={dvz.var=64..}] run experience add @s 192 points
execute as @s[scores={dvz.var=64..}] run scoreboard players remove @s dvz.var 64
execute as @s[scores={dvz.var=32..}] run experience add @s 96 points
execute as @s[scores={dvz.var=32..}] run scoreboard players remove @s dvz.var 32
execute as @s[scores={dvz.var=16..}] run experience add @s 48 points
execute as @s[scores={dvz.var=16..}] run scoreboard players remove @s dvz.var 16
execute as @s[scores={dvz.var=8..}] run experience add @s 24 points
execute as @s[scores={dvz.var=8..}] run scoreboard players remove @s dvz.var 8
execute as @s[scores={dvz.var=4..}] run experience add @s 12 points
execute as @s[scores={dvz.var=4..}] run scoreboard players remove @s dvz.var 4
execute as @s[scores={dvz.var=2..}] run experience add @s 6 points
execute as @s[scores={dvz.var=2..}] run scoreboard players remove @s dvz.var 2
execute as @s[scores={dvz.var=1..}] run experience add @s 3 points

# Reset exp levels.
experience set @s 0 levels

# Return the players mana/levels.
execute as @s[scores={dvz.mana.temp=8192..}] run experience add @s 8192 levels
execute as @s[scores={dvz.mana.temp=8192..}] run scoreboard players remove @s dvz.mana.temp 8192
execute as @s[scores={dvz.mana.temp=4096..}] run experience add @s 4096 levels
execute as @s[scores={dvz.mana.temp=4096..}] run scoreboard players remove @s dvz.mana.temp 4096
execute as @s[scores={dvz.mana.temp=2048..}] run experience add @s 2048 levels
execute as @s[scores={dvz.mana.temp=2048..}] run scoreboard players remove @s dvz.mana.temp 2048
execute as @s[scores={dvz.mana.temp=1024..}] run experience add @s 1024 levels
execute as @s[scores={dvz.mana.temp=1024..}] run scoreboard players remove @s dvz.mana.temp 1024
execute as @s[scores={dvz.mana.temp=512..}] run experience add @s 512 levels
execute as @s[scores={dvz.mana.temp=512..}] run scoreboard players remove @s dvz.mana.temp 512
execute as @s[scores={dvz.mana.temp=256..}] run experience add @s 256 levels
execute as @s[scores={dvz.mana.temp=256..}] run scoreboard players remove @s dvz.mana.temp 256
execute as @s[scores={dvz.mana.temp=128..}] run experience add @s 128 levels
execute as @s[scores={dvz.mana.temp=128..}] run scoreboard players remove @s dvz.mana.temp 128
execute as @s[scores={dvz.mana.temp=64..}] run experience add @s 64 levels
execute as @s[scores={dvz.mana.temp=64..}] run scoreboard players remove @s dvz.mana.temp 64
execute as @s[scores={dvz.mana.temp=32..}] run experience add @s 32 levels
execute as @s[scores={dvz.mana.temp=32..}] run scoreboard players remove @s dvz.mana.temp 32
execute as @s[scores={dvz.mana.temp=16..}] run experience add @s 16 levels
execute as @s[scores={dvz.mana.temp=16..}] run scoreboard players remove @s dvz.mana.temp 16
execute as @s[scores={dvz.mana.temp=8..}] run experience add @s 8 levels
execute as @s[scores={dvz.mana.temp=8..}] run scoreboard players remove @s dvz.mana.temp 8
execute as @s[scores={dvz.mana.temp=4..}] run experience add @s 4 levels
execute as @s[scores={dvz.mana.temp=4..}] run scoreboard players remove @s dvz.mana.temp 4
execute as @s[scores={dvz.mana.temp=2..}] run experience add @s 2 levels
execute as @s[scores={dvz.mana.temp=2..}] run scoreboard players remove @s dvz.mana.temp 2
execute as @s[scores={dvz.mana.temp=1..}] run experience add @s 1 levels

# Remove the temporary scoreboard.
scoreboard objectives remove dvz.mana.temp