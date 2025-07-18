# Open the portal
tag @s remove ogvz.marker.ender_portal.animation
kill @a[tag=ogvz.zombie.class.enderman.kill]
summon minecraft:lightning_bolt ~ ~-2 ~
playsound minecraft:block.end_portal.spawn player @a ~ ~10000 ~ 1 1 1

# =====( [star] )=====
tellraw @a [ \
  "", \
  {text:"\u1110\u1111\u1112",font:"ogvz:custom"}, \
  {text:"The ",color:"light_purple"}, \
  {text:"Ender Portal",color:"light_purple",bold:true}, \
  {text:" has been opened!",color:"light_purple"} \
]

# Give every non-enderman zombie player a Ender Eye ability.
execute as @a[tag=ogvz.zombie,tag=!ogvz.zombie.class.enderman] at @s run function ogvz:give/other/teleport_to_ender_portal_ender_eye
