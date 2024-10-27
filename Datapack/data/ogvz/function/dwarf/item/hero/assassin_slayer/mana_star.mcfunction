# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_star
# Function Name: ogvz:dwarf/item/hero/assassin_slayer/mana_star
# File Purpose: Shoots a ray that grants mana regeneration effect.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.assassin_slayer.mana_star.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Mana Star]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.assassin_slayer.mana_star.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.assassin_slayer.mana_star.cooldown.seconds=1..}] run return 0

title @s actionbar [ \
  "", \
  {"text":"[Mana Star]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

scoreboard players set @s ogvz.assassin_slayer.mana_star.cooldown.seconds 10

# Give the player a temporary tag.
tag @s add temp.ray_caster

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/assassin_slayer/mana_star_loop

# Give mana regeneration (luck) to the hit dwarf.
effect give @p[tag=ogvz.dwarf,tag=temp.hit] minecraft:luck 100 0

# Remove temporary tags.
tag @s remove temp.ray_caster
tag @a remove temp.hit

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
