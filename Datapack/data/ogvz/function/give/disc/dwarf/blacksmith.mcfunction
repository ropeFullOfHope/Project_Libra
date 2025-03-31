# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: blacksmith
# Function Name: ogvz:give/disc/dwarf/blacksmith
# File Purpose: Gives you the Blacksmith disc.
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
  minecraft:custom_data={active_id:2001}, \
  minecraft:item_model="ogvz:disc_blacksmith", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Blacksmith","color":"blue"}, \
  minecraft:lore=[ \
    {"text":"Tasked with creating weapons and","color":"blue"}, \
    {"text":"tools.","color":"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]