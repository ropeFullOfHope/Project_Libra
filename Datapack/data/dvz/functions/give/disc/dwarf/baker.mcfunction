# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: baker
# Function Name: dvz:give/dwarf_disc/baker
# File Purpose: Gives you the Baker disc.
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
  minecraft:custom_model_data=2003, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Baker","color":"blue"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with baking Food.","color":"blue"}' \
  ] \
]