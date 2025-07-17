# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: particles
# Function Name: ogvz:tick/particles
# File Purpose: Creates particles at players under certain conditions.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Dwarves - Particles when near non-destroyed shrine during zombie phase (3) or last stand phase (4).
execute if score &ogvz ogvz.game.phase matches 3..4 if score &ogvz ogvz.game.shrine_health matches 1.. if predicate {condition:"minecraft:random_chance",chance:0.20} as @a[tag=ogvz.dwarf,tag=ogvz.mana] at @s positioned ~ ~2 ~ if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..4] at @s run particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal

# Frozen custom effect.
execute as @a[tag=ogvz.frozen] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:snowflake ~ ~ ~ 0.25 0.25 0.25 0 1

# Pearl Rod - During teleportation warmup.
execute as @a[tag=ogvz.mana.teleporting] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 1

# Wither Warrior Whispersong Soul Charged Arrow
execute as @e[type=#minecraft:arrows,tag=temp.charged_whispersong_arrow] at @s run particle minecraft:soul ~ ~ ~ 0 0 0 1 0

# Enderman - Create Portal - During teleportation warmup.
execute as @a[tag=ogvz.zombie.class.enderman.creating_portal] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 1

# Ender Eye - During teleportation warmup.
execute as @a[tag=ogvz.zombie.teleporting] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 1
