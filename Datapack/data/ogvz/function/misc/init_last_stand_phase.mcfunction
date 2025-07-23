scoreboard players set &ogvz ogvz.game.phase 4

tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"The ",color:"gold"}, \
  {text:"Shrine",color:"gold",bold:true}, \
  {text:" channels its remaining power into you!",color:"gold"} \
]
tellraw @a[tag=ogvz.zombie] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"Last Dwarf standing! The ",color:"light_purple"}, \
  {text:"Shrine’s",color:"light_purple",bold:true}, \
  {text:" remaining power surges within them.",color:"light_purple"} \
]

tag @a[tag=ogvz.dwarf] add ogvz.dwarf.last_dwarf
effect give @a[tag=ogvz.dwarf] minecraft:instant_health 1 5 true
effect give @a[tag=ogvz.dwarf] minecraft:saturation 1 20 true
