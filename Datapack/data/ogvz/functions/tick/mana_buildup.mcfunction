# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_buildup
# Function Name: ogvz:tick/mana_buildup
# File Purpose: Handles all passive mana gain/loss for dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: 
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# If a non-builder dwarf is at or below 99 mana (below 100 mana cap), they gain 1 mana every second (50000 micromana every tick).
# If the shrine is damaged, they get less mana regen, down to 0.5 mana every second (25000 micromana every tick) at shrine health: 1.
# If the shrine is destroyed (shrine health: 0), they get no mana regen.
execute if score &ogvz ogvz.game.shrine_health matches 12.. run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 50000
execute if score &ogvz ogvz.game.shrine_health matches 11 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 47727
execute if score &ogvz ogvz.game.shrine_health matches 10 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 45455
execute if score &ogvz ogvz.game.shrine_health matches 9 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 43182
execute if score &ogvz ogvz.game.shrine_health matches 8 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 40909
execute if score &ogvz ogvz.game.shrine_health matches 7 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 38636
execute if score &ogvz ogvz.game.shrine_health matches 6 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 36364
execute if score &ogvz ogvz.game.shrine_health matches 5 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 34091
execute if score &ogvz ogvz.game.shrine_health matches 4 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 31818
execute if score &ogvz ogvz.game.shrine_health matches 3 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 29545
execute if score &ogvz ogvz.game.shrine_health matches 2 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 27273
execute if score &ogvz ogvz.game.shrine_health matches 1 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 25000
execute if score &ogvz ogvz.game.shrine_health matches 0 run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..99] ogvz.dwarf.mana_buildup 0

# If a builder dwarf is at or below 9998 mana (below 9999 mana cap), they gain 0.5 mana every second (25000 micromana every tick).
# If the shrine is damaged, they get less mana regen, down to 0.25 mana every second (12500 micromana every tick) at shrine health: 1.
# If the shrine is destroyed (shrine health: 0), they get no mana regen.
execute if score &ogvz ogvz.game.shrine_health matches 12.. run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 25000
execute if score &ogvz ogvz.game.shrine_health matches 11 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 23864
execute if score &ogvz ogvz.game.shrine_health matches 10 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 22727
execute if score &ogvz ogvz.game.shrine_health matches 9 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 21591
execute if score &ogvz ogvz.game.shrine_health matches 8 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 20455
execute if score &ogvz ogvz.game.shrine_health matches 7 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 19318
execute if score &ogvz ogvz.game.shrine_health matches 6 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 18182
execute if score &ogvz ogvz.game.shrine_health matches 5 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 17045
execute if score &ogvz ogvz.game.shrine_health matches 4 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 15909
execute if score &ogvz ogvz.game.shrine_health matches 3 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 14773
execute if score &ogvz ogvz.game.shrine_health matches 2 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 13636
execute if score &ogvz ogvz.game.shrine_health matches 1 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 12500
execute if score &ogvz ogvz.game.shrine_health matches 0 run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 0

# If a non-builder dwarf is near shrine, they gain 1 mana every second (50000 micromana every tick), up to 200 mana.
execute if score &ogvz ogvz.game.shrine_health matches 1.. positioned ~ ~2 ~ if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..4] run scoreboard players add @s[tag=!ogvz.dwarf.class.builder,level=..199] ogvz.dwarf.mana_buildup 50000

# If a builder dwarf is near shrine, they gain 0.5 mana every second (25000 micromana every tick).
execute if score &ogvz ogvz.game.shrine_health matches 1.. positioned ~ ~2 ~ if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..4] run scoreboard players add @s[tag=ogvz.dwarf.class.builder,level=..9998] ogvz.dwarf.mana_buildup 25000
