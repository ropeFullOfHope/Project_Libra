# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: oceans_pearl
# Function Name: ogvz:dwarf/hero/dwarven_guard/oceans_pearl
# File Purpose: Spawns the ocean's pearl.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard players set @s ogvz.misc.custom_bar_hide.seconds 3

execute if entity @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Ocean\'s Pearl]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_guard.oceans_pearl.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run return 0

scoreboard objectives add temp.oceans_pearl_count dummy
execute store result score @s temp.oceans_pearl_count if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl]
execute if entity @s[scores={temp.oceans_pearl_count=2..}] run title @s actionbar [ \
  "", \
  {"text":"[Ocean\'s Pearl]","bold":true,"color":"red"}, \
  {"text":" You can have a maximum of ","color":"red"}, \
  {"text":"2","bold":true,"color":"red"}, \
  {"text":" Ocean's Pearls active at once!","color":"red"} \
]
execute if entity @s[scores={temp.oceans_pearl_count=2..}] run return run scoreboard objectives remove temp.oceans_pearl_count
scoreboard objectives remove temp.oceans_pearl_count

execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run title @s actionbar [ \
  "", \
  {"text":"[Ocean's Pearl]","bold":true,"color":"red"}, \
  {"text":" You are too close to another Ocean's Pearl!","color":"red"} \
]
execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run return 0

execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run title @s actionbar [ \
  "", \
  {"text":"[Ocean's Pearl]","bold":true,"color":"red"}, \
  {"text":" You are too close to another Ocean's Pearl!","color":"red"} \
]
execute positioned ~ ~2.5 ~ if entity @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl,distance=..12] run return 0

execute unless block ~ ~2.5 ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Ocean's Pearl]","bold":true,"color":"red"}, \
  {"text":" There is not enough room!","color":"red"} \
]
execute unless block ~ ~2.5 ~ #ogvz:go_through run return 0

execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {"text":"[Ocean's Pearl]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"50 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=50..] run return 0

# Remove 50 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

# Give 30 second cooldown.
scoreboard players set @s ogvz.dwarven_guard.oceans_pearl.cooldown.seconds 30

title @s actionbar [ \
  "", \
  {"text":"[Ocean's Pearl]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.conduit.activate player @a ~ ~ ~ 3 1

execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:nautilus ~ ~1.5 ~ 0 0 0 1 30 normal

# Summons an item display to represent the Ocean's Pearl.
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {teleport_duration:3,Tags:["ogvz.item_display","ogvz.item_display.oceans_pearl","ogvz.kill_on_reload"],item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:item_model":"ogvz:oceans_pearl"}}}

# Summons an invisible, silent, no AI slime used as a hitbox for the Ocean's Pearl. It starts at 1/16th size, because invisibility kicks in a few ticks later.
execute positioned ~ ~2.5 ~ align xyz positioned ~0.5 ~0.11 ~0.5 run summon minecraft:slime ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:40f,Tags:["ogvz.oceans_pearl_hitbox","ogvz.oceans_pearl_hitbox.resize","ogvz.kill_on_reload"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:regeneration",amplifier:2,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:40},{id:"minecraft:scale",base:0.0}]}

# Resize the slime 5 ticks later.
schedule function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_resize_hitbox 5t append
