# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: snowball_barage
# Function Name: ogvz:zombie/ability/snowman/snowball_barage
# File Purpose: Shoots a barrage of snowballs.
# Created By: ropeFullOfHope
# 
# Created On: 2025.02.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Snowball Barrage]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.snowman.snowball_barrage.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.snowman.snowball_barrage.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.snowman.snowball_barrage.cooldown.seconds 8

title @s actionbar [ \
  "", \
  {"text":"[Snowball Barrage]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.50
playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.63
playsound minecraft:entity.snowball.throw player @s ~ ~ ~ 1 0.75

# Summon a vector marker and point it in the same direction as the player at -45° angle relative to the ground, lastly teleport it 1 block forward, so it can be considered a vector.
execute in minecraft:overworld positioned 0.0 0.0 0.0 summon minecraft:marker run tag @s add temp.vector
execute rotated as @s run rotate @n[type=minecraft:marker,tag=temp.vector] ~ -45
execute as @n[type=minecraft:marker,tag=temp.vector] at @s run tp @s ^ ^ ^1

# Create temporary scoreboards for storing the value of the vector.
scoreboard objectives add temp.vector.x dummy
scoreboard objectives add temp.vector.y dummy
scoreboard objectives add temp.vector.z dummy

# Store the vector values into the created scoreboards.
execute store result score @s temp.vector.x run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[0] 1000
execute store result score @s temp.vector.y run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[1] 1000
execute store result score @s temp.vector.z run data get entity @n[type=minecraft:marker,tag=temp.vector] Pos[2] 1000

# Create temporary scoreboards for snowball trajectory deviation.
scoreboard objectives add temp.deviation.x dummy
scoreboard objectives add temp.deviation.y dummy
scoreboard objectives add temp.deviation.z dummy

# Create a temporary scoreboard for the amount of snowballs that will be spawned and shot.
scoreboard objectives add temp.snowball_amount dummy
scoreboard players set @s temp.snowball_amount 64

# Loop to spawn all snowballs.
execute as @s at @s run function ogvz:zombie/ability/snowman/snowball_barrage_loop

# Remove temporary scoreboards.
scoreboard objectives remove temp.vector.x
scoreboard objectives remove temp.vector.y
scoreboard objectives remove temp.vector.z
scoreboard objectives remove temp.deviation.x
scoreboard objectives remove temp.deviation.y
scoreboard objectives remove temp.deviation.z
scoreboard objectives remove temp.snowball_amount

kill @e[type=minecraft:marker,tag=temp.vector]
