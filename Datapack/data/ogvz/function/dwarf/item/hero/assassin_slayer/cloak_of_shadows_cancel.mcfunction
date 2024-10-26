# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: cloak_of_shadows_cancel
# Function Name: ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows_cancel
# File Purpose: Removes the invibisiblity from the player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.26
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/assassin_slayer_take_or_deal_damage_while_invisible

title @s actionbar [ \
  "", \
  {"text":"[Cloak of Shadows]","bold":true,"color":"light_purple"}, \
  {"text":" Canceled!","color":"light_purple"} \
]

scoreboard players set @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds 5

tag @s remove ogvz.dwarf.class.hero.assassin_slayer.invisible

effect clear @s minecraft:invisibility

# Reapply the textures of the armor.
item modify entity @s armor.head ogvz:set_chainmail_item_model_head
item modify entity @s armor.chest ogvz:set_chainmail_item_model_chest
item modify entity @s armor.legs ogvz:set_chainmail_item_model_legs
item modify entity @s armor.feet ogvz:set_chainmail_item_model_feet

playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 0.5
