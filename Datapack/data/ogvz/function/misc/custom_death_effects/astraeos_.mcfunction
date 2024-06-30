# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: astraeos_
# Function Name: ogvz:misc/custom_death_effects/astraeos_
# File Purpose: Custom death animation for Astraeos_ (large sum donation).
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.28
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard objectives add temp.custom_death_animation.astraeos_ dummy

scoreboard players add &ogvz temp.custom_death_animation.astraeos_ 1

execute if score &ogvz temp.custom_death_animation.astraeos_ matches 1 summon minecraft:marker run tag @s add ogvz.marker
execute if score &ogvz temp.custom_death_animation.astraeos_ matches 1 run tag @n[type=minecraft:marker,tag=ogvz.marker] add ogvz.marker.astral_explosion

execute if score &ogvz temp.custom_death_animation.astraeos_ matches 1 at @n[type=minecraft:marker,tag=ogvz.marker.astral_explosion] run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 600 force
execute if score &ogvz temp.custom_death_animation.astraeos_ matches 41 at @n[type=minecraft:marker,tag=ogvz.marker.astral_explosion] run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.3 0.3 0.3 600 force
execute if score &ogvz temp.custom_death_animation.astraeos_ matches 41 at @n[type=minecraft:marker,tag=ogvz.marker.astral_explosion] run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 0.8

execute unless score &ogvz temp.custom_death_animation.astraeos_ matches 41.. run schedule function ogvz:misc/custom_death_effects/astraeos_ 1t replace

execute if score &ogvz temp.custom_death_animation.astraeos_ matches 41.. run kill @e[type=minecraft:marker,tag=ogvz.marker.astral_explosion]
execute if score &ogvz temp.custom_death_animation.astraeos_ matches 41.. run scoreboard objectives remove temp.custom_death_animation.astraeos_