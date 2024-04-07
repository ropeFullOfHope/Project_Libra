# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: explode
# Function Name: dvz:zombies/creeper/explode
# File Purpose: Creates an explosion then kills you.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.05
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Summons a creeper at your feet, that explodes instantly.
summon minecraft:creeper ~ ~ ~ {Fuse:0s,NoAI:1b,Invulnerable:1b,ExplosionRadius:3b}

particle minecraft:cloud ~ ~1 ~ 1 0.25 1 0.5 50

damage @s 2000 minecraft:explosion