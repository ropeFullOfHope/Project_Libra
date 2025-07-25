# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: dragon_scale_remove
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_remove
# File Purpose: Transforms the dragon warrior back to their normal form.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.31
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s remove ogvz.dwarf.class.hero.dragon_warrior.dragon_form

scoreboard players set @s ogvz.dragon_warrior.dragon_scale.cooldown.seconds 300

# Remove the dragon form attributes.
attribute @s minecraft:attack_damage modifier remove ogvz.dragon_form.attack_damage
attribute @s minecraft:movement_speed modifier remove ogvz.dragon_form.movement_speed

# Remove wings from the chestplate and disable gliding.
item modify entity @s armor.chest ogvz:dragon_warrior_normal_form_chestplate

# Play a global sound announcing the transformation.
playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1 1 1

particle minecraft:dragon_breath ~ ~0.9 ~ 0 0 0 0.2 100 force
