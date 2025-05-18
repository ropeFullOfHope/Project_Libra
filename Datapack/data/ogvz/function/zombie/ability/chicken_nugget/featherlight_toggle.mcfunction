# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: featherlight_toggle
# Function Name: ogvz:zombie/ability/chicken_nugget/featherlight_toggle
# File Purpose: Toggles the featherlight passive ability.
# Created By: ropeFullOfHope
# 
# Created On: 2025.05.10
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if items entity @s[tag=temp.use.mainhand] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled
execute if items entity @s[tag=temp.use.offhand] weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled

title @s[tag=temp.enabled] actionbar [ \
  "", \
  {"text":"[Featherlight]","bold":true,"color":"light_purple"}, \
  {"text":" Disabled!","color":"light_purple"} \
]

title @s[tag=!temp.enabled] actionbar [ \
  "", \
  {"text":"[Featherlight]","bold":true,"color":"light_purple"}, \
  {"text":" Enabled!","color":"light_purple"} \
]

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

item modify entity @s[tag=temp.use.mainhand,tag=temp.enabled] weapon.mainhand ogvz:disable_featherlight
item modify entity @s[tag=temp.use.mainhand,tag=!temp.enabled] weapon.mainhand ogvz:enable_featherlight
item modify entity @s[tag=temp.use.offhand,tag=temp.enabled] weapon.offhand ogvz:disable_featherlight
item modify entity @s[tag=temp.use.offhand,tag=!temp.enabled] weapon.offhand ogvz:enable_featherlight

effect clear @s[tag=temp.enabled] minecraft:slow_falling

tag @s remove temp.enabled
