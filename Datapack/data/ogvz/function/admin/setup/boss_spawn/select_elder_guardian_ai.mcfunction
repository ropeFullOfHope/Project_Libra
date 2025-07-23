# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# 4 - Elder Guardian
scoreboard players set &ogvz ogvz.game.boss 3

bossbar set ogvz:boss_timer color blue

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"light_purple"}, \
  {"selector":"@s","color":"light_purple"}, \
  {"text":" selected the AI Elder Guardian boss.","color":"light_purple"} \
]
