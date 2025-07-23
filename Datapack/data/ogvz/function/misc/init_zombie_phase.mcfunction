scoreboard players set &ogvz ogvz.game.phase 3

tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"The Zombies are launching an assault! Protect the ",color:"gold"}, \
  {text:"Shrine",color:"gold",bold:true}, \
  {text:" at all costs!",color:"gold"} \
]
tellraw @a[tag=ogvz.zombie] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"Attack the dwarven keep! Destroy the ",color:"light_purple"}, \
  {text:"Shrine",color:"light_purple",bold:true}, \
  {text:"!",color:"light_purple"} \
]

bossbar set ogvz:shrine_health visible true

execute as @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] at @s run function ogvz:zombie/give_discs
