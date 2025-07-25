# Open the portal
tag @s remove ogvz.marker.ender_portal.animation
kill @a[tag=ogvz.zombie.class.enderman.kill]
summon minecraft:lightning_bolt ~ ~-2 ~
playsound minecraft:block.end_portal.spawn player @a ~ ~10000 ~ 1 1 1

# =====( [star] )=====
tellraw @a [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Ender Portal",color:"light_purple",bold:true}, \
  {text:" has been opened!",color:"light_purple"} \
]

# Give every non-enderman zombie player a Ender Eye ability.
execute as @a[tag=ogvz.zombie,tag=!ogvz.zombie.class.enderman] at @s run function ogvz:give/other/ender_eye
