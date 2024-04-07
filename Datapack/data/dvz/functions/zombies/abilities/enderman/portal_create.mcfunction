# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/enderman/portal_above
#            dvz:zombies/enderman/portal_below
# File Name: portal_create
# Function Name: dvz:zombies/enderman/portal_create
# File Purpose: Creates a portal and teleports you to it.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

##### Place portal.
### Base pillar
fill ~-1 ~-3 ~-1 ~1 ~-1 ~1 minecraft:end_stone replace #dvz:go_through
### 1st ring
# Edges
fill ~-1 ~-2 ~-3 ~1 ~-1 ~-3 minecraft:end_stone replace #dvz:go_through
fill ~-1 ~-2 ~3 ~1 ~-1 ~3 minecraft:end_stone replace #dvz:go_through
fill ~-3 ~-2 ~-1 ~-3 ~-1 ~1 minecraft:end_stone replace #dvz:go_through
fill ~3 ~-2 ~-1 ~3 ~-1 ~1 minecraft:end_stone replace #dvz:go_through
# Corners
fill ~-2 ~-2 ~-2 ~-2 ~-1 ~-2 minecraft:end_stone replace #dvz:go_through
fill ~-2 ~-2 ~2 ~-2 ~-1 ~2 minecraft:end_stone replace #dvz:go_through
fill ~2 ~-2 ~-2 ~2 ~-1 ~-2 minecraft:end_stone replace #dvz:go_through
fill ~2 ~-2 ~2 ~2 ~-1 ~2 minecraft:end_stone replace #dvz:go_through
### 2nd ring
# Edges
fill ~-1 ~-1 ~-5 ~1 ~-1 ~-5 minecraft:end_stone replace #dvz:go_through
fill ~-1 ~-1 ~5 ~1 ~-1 ~5 minecraft:end_stone replace #dvz:go_through
fill ~-5 ~-1 ~-1 ~-5 ~-1 ~1 minecraft:end_stone replace #dvz:go_through
fill ~5 ~-1 ~-1 ~5 ~-1 ~1 minecraft:end_stone replace #dvz:go_through
# Corners
fill ~4 ~-1 ~2 ~4 ~-1 ~3 minecraft:end_stone replace #dvz:go_through
fill ~4 ~-1 ~-2 ~4 ~-1 ~-3 minecraft:end_stone replace #dvz:go_through
fill ~-4 ~-1 ~2 ~-4 ~-1 ~3 minecraft:end_stone replace #dvz:go_through
fill ~-4 ~-1 ~-2 ~-4 ~-1 ~-3 minecraft:end_stone replace #dvz:go_through
fill ~2 ~-1 ~4 ~3 ~-1 ~4 minecraft:end_stone replace #dvz:go_through
fill ~2 ~-1 ~-4 ~3 ~-1 ~-4 minecraft:end_stone replace #dvz:go_through
fill ~-2 ~-1 ~4 ~-3 ~-1 ~4 minecraft:end_stone replace #dvz:go_through
fill ~-2 ~-1 ~-4 ~-3 ~-1 ~-4 minecraft:end_stone replace #dvz:go_through
### End rods
fill ~-2 ~-3 ~-2 ~-2 ~-3 ~-2 minecraft:end_rod[facing=down] replace #dvz:go_through
fill ~-2 ~-3 ~2 ~-2 ~-3 ~2 minecraft:end_rod[facing=down] replace #dvz:go_through
fill ~2 ~-3 ~-2 ~2 ~-3 ~-2 minecraft:end_rod[facing=down] replace #dvz:go_through
fill ~2 ~-3 ~2 ~2 ~-3 ~2 minecraft:end_rod[facing=down] replace #dvz:go_through

# Teleport player to the portal.
execute align xyz positioned ~0.5 ~0.1 ~0.5 run tp @s ~ ~ ~

# Create a marker at the center of the portal.
execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run tag @s add portal

# Add a tag to the player to link them to the portal.
tag @s add portal_bound

# Announce the portal opening.
tellraw @a [ \
  "", \
  {"text":"ALERT: ","bold":true,"color":"light_purple"}, \
  {"selector":"@s"}, \
  {"text":" has opened a portal!","color":"light_purple"} \
]

# Summon a lightning bolt above the portal.
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:lightning_bolt ~ ~7 ~

# Play a global sound.
execute align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 0.5 1

# Remove the portal abilities.
clear @s minecraft:carrot_on_a_stick{CustomModelData:7131}
clear @s minecraft:carrot_on_a_stick{CustomModelData:7132}

# Give player the reinforce ability.
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7133, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Reinforce","italic":false,"color":"light_purple"}', \
    Lore:[ \
      '{"text":"Allow other mobs to teleport to the","color":"blue"}', \
      '{"text":"portal.","color":"blue"}', \
      '{"text":"15 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}

# Give the player permanent resistance and slowness.
effect give @s minecraft:resistance infinite 2 true
effect give @s minecraft:slowness infinite 2 true