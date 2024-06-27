# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: tailor
# Function Name: ogvz:give/disc/dwarves/tailor
# File Purpose: Gives you the Tailor disc.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=2002, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Tailor","color":"blue"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with creating armor and","color":"blue"}', \
    '{"text":"shields.","color":"blue"}' \
  ] \
]