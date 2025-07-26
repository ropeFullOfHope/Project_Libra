#> Description: Evolve the player into a hoglin.

# Summon a lightning bolt high into the air.
summon minecraft:lightning_bolt ~ 20000 ~

# Play an evolution sound.
playsound minecraft:entity.zoglin.angry player @a ~ ~ ~ 10 0.8
playsound minecraft:entity.zoglin.angry player @a ~ ~ ~ 10 1.5
playsound minecraft:entity.hoglin.converted_to_zombified player @a ~ ~ ~ 10 1

# Change the player into a hoglin.
execute as @s at @s run function ogvz:zombie/disc/hoglin
