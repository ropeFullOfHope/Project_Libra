# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: glowing_shell
# Function Name: ogvz:dwarf/item/hero/dwarven_guard/glowing_shell
# File Purpose: Creates an area of effect inside which dwarves receive mana regeneration.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Glowing Shell]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_guard.glowing_shell.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.seconds=1..}] run return 0

execute unless entity @s[level=20..] run title @s actionbar [ \
  "", \
  {"text":"[Glowing Shell]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"20 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=10..] run return 0

# Remove 20 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 20

scoreboard players set @s ogvz.dwarven_guard.glowing_shell.cooldown.seconds 30

title @s actionbar [ \
  "", \
  {"text":"[Glowing Shell]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 1

# Summon a marker with a temporary tag.
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run tag @s add temp.target

# Give the marker the proper tags and set it's effect duration to 50 seconds.
tag @n[type=minecraft:marker,tag=temp.target] add ogvz.marker
tag @n[type=minecraft:marker,tag=temp.target] add ogvz.marker.glowing_shell
tag @n[type=minecraft:marker,tag=temp.target] add ogvz.kill_on_reload
scoreboard players set @n[type=minecraft:marker,tag=temp.target] ogvz.marker.glowing_shell.duration.seconds 50
scoreboard players set @n[type=minecraft:marker,tag=temp.target] ogvz.marker.glowing_shell.duration.ticks 0

# Remove the temporary tag from the marker.
tag @n[type=minecraft:marker,tag=temp.target] remove temp.target
