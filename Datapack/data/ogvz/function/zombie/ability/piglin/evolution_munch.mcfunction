# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: evolution_munch
# Function Name: ogvz:zombie/ability/piglin/evolution_munch
# File Purpose: Play a munching sound. The sound gets deeper the closer you get to evolving.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard objectives add temp.playsound_value dummy
scoreboard objectives add temp.max_value dummy

# Yes, it's the funny number, no it's not intentional. The custom bar is 69 pixels wide from the inside and it's aligned to vanilla bars.
scoreboard players set @s temp.playsound_value 18
# If you have changed the amount of experience required to evolve, you also have to change this to that value.
scoreboard players set @s temp.max_value 100

# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.playsound_value *= @s ogvz.piglin.evolution.progress
scoreboard players operation @s temp.playsound_value /= @s temp.max_value

# Display the custom bar in the actionbar.
execute as @s[scores={temp.playsound_value=0}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.20
execute as @s[scores={temp.playsound_value=1}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.15
execute as @s[scores={temp.playsound_value=2}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.10
execute as @s[scores={temp.playsound_value=3}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.05
execute as @s[scores={temp.playsound_value=4}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.00
execute as @s[scores={temp.playsound_value=5}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.95
execute as @s[scores={temp.playsound_value=6}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.90
execute as @s[scores={temp.playsound_value=7}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.85
execute as @s[scores={temp.playsound_value=8}   ] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 0.80
execute as @s[scores={temp.playsound_value=9}   ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.20
execute as @s[scores={temp.playsound_value=10}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.15
execute as @s[scores={temp.playsound_value=11}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.10
execute as @s[scores={temp.playsound_value=12}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.05
execute as @s[scores={temp.playsound_value=13}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 1.00
execute as @s[scores={temp.playsound_value=14}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.95
execute as @s[scores={temp.playsound_value=15}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.90
execute as @s[scores={temp.playsound_value=16}  ] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.85
execute as @s[scores={temp.playsound_value=17..}] run playsound minecraft:entity.horse.eat player @a ~ ~ ~ 1 0.80

scoreboard objectives remove temp.playsound_value
scoreboard objectives remove temp.max_value
