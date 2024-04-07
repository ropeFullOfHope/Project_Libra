# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: reinforce
# Function Name: dvz:zombies/enderman/reinforce
# File Purpose: Gives every player on zombie team an active item that lets them teleport to the portal.
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

execute if entity @s[scores={DVZ.reinforce.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Reinforce]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.reinforce.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.reinforce.cool=1..}] run return 0

scoreboard players set @s DVZ.reinforce.cool 15

title @s actionbar [ \
  "", \
  {"text":"[Reinforce]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

execute at @e[type=minecraft:marker,tag=portal,limit=1,sort=nearest] run summon minecraft:lightning_bolt ~ ~7 ~

# Clear and then give all players on zombie team the Teleport to Portal ability.
clear @a minecraft:carrot_on_a_stick{CustomModelData:9002}
give @a[tag=zombies,tag=!portal_bound] minecraft:carrot_on_a_stick{ \
  CustomModelData:9002, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Teleport to Portal","italic":false,"color":"light_purple"}', \
    Lore:[ \
      '{"text":"Teleport to the Enderman\'s portal.","color":"blue"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}