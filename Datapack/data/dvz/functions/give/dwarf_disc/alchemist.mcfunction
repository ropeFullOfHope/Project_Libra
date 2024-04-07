# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: alchemist
# Function Name: dvz:give/dwarf_disc/alchemist
# File Purpose: Gives you the Alchemist disc.
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
  minecraft:custom_model_data=2004, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Alchemist","color":"blue"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with brewing Magic Potions.","color":"blue"}' \
  ] \
]