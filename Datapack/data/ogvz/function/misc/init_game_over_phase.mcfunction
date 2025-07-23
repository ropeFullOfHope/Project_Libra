scoreboard players set &ogvz ogvz.game.phase 5

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run tellraw @a [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"The Shrine has been destroyed! The dwarven keep has fallen! ",color:"light_purple"} \
]
execute unless entity @e[type=minecraft:player,tag=ogvz.dwarf] run tellraw @a [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"The last Dwarf has perished! The dwarven keep has fallen!",color:"light_purple"} \
]

scoreboard objectives add temp.timer.minutes dummy
scoreboard objectives add temp.const.1200 dummy

scoreboard players set &ogvz temp.const.1200 1200
scoreboard players operation &ogvz temp.timer.minutes = &ogvz ogvz.game.timer
scoreboard players operation &ogvz temp.timer.minutes /= &ogvz temp.const.1200

execute unless entity @e[type=minecraft:player,tag=ogvz.dwarf] run tellraw @a [ \
  "", \
  {text:"Game Statistics",color:"gray",bold:true}, \
  {text:":\n",color:"gray"}, \
  {text:"- Game Time: ",color:"gray"}, \
  {score:{name:"&ogvz",objective:"temp.timer.minutes"}}, \
  {text:" minutes",color:"gray"}, \
]

scoreboard objectives remove temp.timer.minutes
scoreboard objectives remove temp.const.1200

execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run setblock ~ ~ ~ minecraft:gilded_blackstone

kill @e[type=minecraft:marker,tag=ogvz.marker.shrine]
