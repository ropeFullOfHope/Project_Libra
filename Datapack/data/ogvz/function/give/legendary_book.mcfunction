# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: legendary_book
# Function Name: ogvz:give/legendary_book
# File Purpose: Gives you the Legendary Book.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3006}, \
  minecraft:item_model="ogvz:legendary_book", \
  minecraft:enchantment_glint_override=true, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Legendary Book","color":"gold"}', \
  minecraft:lore=[ \
    '[ \
      {"text":"Conjures ","color":"blue"}, \
      {"text":"Legendary","bold":true,"color":"gold"}, \
      {"text":" items.","color":"blue"} \
    ]', \
    '{"text":"Requires 5 Legendary Shards","italic":false,"color":"red"}', \
    '{"text":"Single-use","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
