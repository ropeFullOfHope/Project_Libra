# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: builder
# Function Name: ogvz:give/disc/dwarves/builder
# File Purpose: Gives you the Builder disc.
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
  minecraft:custom_model_data=2000, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Builder","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with building the keep.","color":"blue"}' \
  ] \
]