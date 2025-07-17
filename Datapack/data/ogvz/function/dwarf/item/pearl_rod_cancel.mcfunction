# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: pearl_rod_cancel
# Function Name: ogvz:dwarf/pearl_rod_cancel
# File Purpose: Cancels teleportation.
# Created By: ropeFullOfHope
# 
# Created On: 2024.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/player_hurt_while_teleporting_pearl_rod

title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"light_purple"}, \
  {"text":" Canceled!","color":"light_purple"} \
]

stopsound @a player minecraft:block.portal.trigger

playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

tag @s remove ogvz.mana.teleporting

scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.seconds 0
scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.ticks 0

attribute @s minecraft:movement_speed modifier remove ogvz.pearl_rod.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.pearl_rod.teleporting.jump_strength

effect clear @s minecraft:nausea
