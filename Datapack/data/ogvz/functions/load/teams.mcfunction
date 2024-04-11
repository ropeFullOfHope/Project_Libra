# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:load
# File Name: teams
# Function Name: dvz:load/teams
# File Purpose: Sets up teams.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments: d prefix is used for dwarves, z prefix is used for zombies and numbers are used for sorting the teams in tab
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add teams
team add d1DWARF
team add d2BUILDER
team add d3ALCHEMIST
team add d3BAKER
team add d3BLACKSMITH
team add d3ENCHANTER
team add d3TAILOR

team add d0DRAGON_WARRIOR
team add d0ASSASIN_SLAYER
team add d0WITHER_WARRIOR
team add d0DWARVEN_GUARD

team add z0ZOMBIE
team add z0HUSK
team add z0VINDICATOR
team add z0DROWNED
team add z1SKELETON
team add z1WITHER_SKELETON
team add z1PILLAGER
team add z1GUARDIAN
team add z2CREEPER
team add z2SPIDER
team add z3BLAZE
team add z3CHICKEN_NUGGET
team add z3OCELOT
team add z3SNOWMAN
team add z3CHILLAGER
team add z3BEE
team add z3PHANTOM
team add z3WOLF
team add z4HOGLIN1
team add z4HOGLIN2
team add z4HOGLIN3
team add z4SILVERFISH
team add z5ENDERMAN
team add z5GOLEM

team add z6JOHNNY
team add z6GHAST
team add z6RAVAGER

team add z7DRAGON
team add z7WITHER
team add z7ELDER_GUARDIAN

team add z8DEAD

# Modify team colors
team modify d1DWARF color aqua
team modify d2BUILDER color green
team modify d3ALCHEMIST color blue
team modify d3BAKER color blue
team modify d3BLACKSMITH color blue
team modify d3ENCHANTER color blue
team modify d3TAILOR color blue

team modify d0DRAGON_WARRIOR color gold
team modify d0ASSASIN_SLAYER color gold
team modify d0WITHER_WARRIOR color gold
team modify d0DWARVEN_GUARD color gold

team modify z0ZOMBIE color red
team modify z0HUSK color red
team modify z0VINDICATOR color red
team modify z0DROWNED color red
team modify z1SKELETON color red
team modify z1WITHER_SKELETON color red
team modify z1PILLAGER color red
team modify z1GUARDIAN color red
team modify z2CREEPER color red
team modify z2SPIDER color red
team modify z3BLAZE color dark_red
team modify z3CHICKEN_NUGGET color dark_red
team modify z3OCELOT color dark_red
team modify z3SNOWMAN color dark_red
team modify z3CHILLAGER color dark_red
team modify z3BEE color dark_red
team modify z3PHANTOM color dark_red
team modify z3WOLF color dark_red
team modify z4HOGLIN1 color dark_red
team modify z4HOGLIN2 color dark_red
team modify z4HOGLIN3 color dark_purple
team modify z4SILVERFISH color dark_red
team modify z5ENDERMAN color dark_purple
team modify z5GOLEM color dark_purple

team modify z6JOHNNY color light_purple
team modify z6GHAST color light_purple
team modify z6RAVAGER color light_purple

team modify z7DRAGON color light_purple
team modify z7WITHER color light_purple
team modify z7ELDER_GUARDIAN color light_purple

team modify z8DEAD color yellow

# Modify team suffix
team modify d1DWARF suffix {"text":" [Dwarf]","bold":true}
team modify d2BUILDER suffix {"text":" [Builder]","bold":true}
team modify d3ALCHEMIST suffix {"text":" [Alchemist]","bold":true}
team modify d3BAKER suffix {"text":" [Baker]","bold":true}
team modify d3BLACKSMITH suffix {"text":" [Blacksmith]","bold":true}
team modify d3ENCHANTER suffix {"text":" [Enchanter]","bold":true}
team modify d3TAILOR suffix {"text":" [Tailor]","bold":true}

team modify d0DRAGON_WARRIOR suffix {"text":" [Dragon Warrior]","bold":true}
team modify d0ASSASIN_SLAYER suffix {"text":" [Assasin Slayer]","bold":true}
team modify d0WITHER_WARRIOR suffix {"text":" [Wither Warrior]","bold":true}
team modify d0DWARVEN_GUARD suffix {"text":" [Dwarven Guard]","bold":true}

team modify z0ZOMBIE suffix {"text":" [Zombie]","bold":true}
team modify z0HUSK suffix {"text":" [Husk]","bold":true}
team modify z0VINDICATOR suffix {"text":" [Vindicator]","bold":true}
team modify z0DROWNED suffix {"text":" [Drowned]","bold":true}
team modify z1SKELETON suffix {"text":" [Skeleton]","bold":true}
team modify z1WITHER_SKELETON suffix {"text":" [Wither Skeleton]","bold":true}
team modify z1PILLAGER suffix {"text":" [Pillager]","bold":true}
team modify z1GUARDIAN suffix {"text":" [Guardian]","bold":true}
team modify z2CREEPER suffix {"text":" [Creeper]","bold":true}
team modify z2SPIDER suffix {"text":" [Spider]","bold":true}
team modify z3BLAZE suffix {"text":" [Blaze]","bold":true}
team modify z3CHICKEN_NUGGET suffix {"text":" [Chicken Nugget]","bold":true}
team modify z3OCELOT suffix {"text":" [Ocelot]","bold":true}
team modify z3SNOWMAN suffix {"text":" [Snowman]","bold":true}
team modify z3CHILLAGER suffix {"text":" [Chillager]","bold":true}
team modify z3BEE suffix {"text":" [Bee]","bold":true}
team modify z3PHANTOM suffix {"text":" [Phantom]","bold":true}
team modify z3WOLF suffix {"text":" [Wolf]","bold":true}
team modify z4HOGLIN1 suffix {"text":" [Hoglin]","bold":true}
team modify z4HOGLIN2 suffix {"text":" [Hoglin]","bold":true}
team modify z4HOGLIN3 suffix {"text":" [Hoglin]","bold":true}
team modify z4SILVERFISH suffix {"text":" [Silverfish]","bold":true}
team modify z5ENDERMAN suffix {"text":" [Enderman]","bold":true}
team modify z5GOLEM suffix {"text":" [Golem]","bold":true}

team modify z6JOHNNY suffix {"text":" [Johnny]","bold":true}
team modify z6GHAST suffix {"text":" [Ghast]","bold":true}
team modify z6RAVAGER suffix {"text":" [Ravager]","bold":true}

team modify z7DRAGON suffix {"text":" [Dragon]","bold":true}
team modify z7WITHER suffix {"text":" [Wither]","bold":true}
team modify z7ELDER_GUARDIAN suffix {"text":" [Elder Guardian]","bold":true}

team modify z8DEAD suffix {"text":" [Dead]","bold":true}

# Players can't see each other when invisible.
team modify d1DWARF seeFriendlyInvisibles false
team modify d2BUILDER seeFriendlyInvisibles false
team modify d3ALCHEMIST seeFriendlyInvisibles false
team modify d3BAKER seeFriendlyInvisibles false
team modify d3BLACKSMITH seeFriendlyInvisibles false
team modify d3ENCHANTER seeFriendlyInvisibles false
team modify d3TAILOR seeFriendlyInvisibles false

team modify d0DRAGON_WARRIOR seeFriendlyInvisibles false
team modify d0ASSASIN_SLAYER seeFriendlyInvisibles false
team modify d0WITHER_WARRIOR seeFriendlyInvisibles false
team modify d0DWARVEN_GUARD seeFriendlyInvisibles false

team modify z0ZOMBIE seeFriendlyInvisibles false
team modify z0HUSK seeFriendlyInvisibles false
team modify z0VINDICATOR seeFriendlyInvisibles false
team modify z0DROWNED seeFriendlyInvisibles false
team modify z1SKELETON seeFriendlyInvisibles false
team modify z1WITHER_SKELETON seeFriendlyInvisibles false
team modify z1PILLAGER seeFriendlyInvisibles false
team modify z1GUARDIAN seeFriendlyInvisibles false
team modify z2CREEPER seeFriendlyInvisibles false
team modify z2SPIDER seeFriendlyInvisibles false
team modify z3BLAZE seeFriendlyInvisibles false
team modify z3CHICKEN_NUGGET seeFriendlyInvisibles false
team modify z3OCELOT seeFriendlyInvisibles false
team modify z3SNOWMAN seeFriendlyInvisibles false
team modify z3CHILLAGER seeFriendlyInvisibles false
team modify z3BEE seeFriendlyInvisibles false
team modify z3PHANTOM seeFriendlyInvisibles false
team modify z3WOLF seeFriendlyInvisibles false
team modify z4HOGLIN1 seeFriendlyInvisibles false
team modify z4HOGLIN2 seeFriendlyInvisibles false
team modify z4HOGLIN3 seeFriendlyInvisibles false
team modify z4SILVERFISH seeFriendlyInvisibles false
team modify z5ENDERMAN seeFriendlyInvisibles false
team modify z5GOLEM seeFriendlyInvisibles false

team modify z6JOHNNY seeFriendlyInvisibles false
team modify z6GHAST seeFriendlyInvisibles false
team modify z6RAVAGER seeFriendlyInvisibles false

team modify z7DRAGON seeFriendlyInvisibles false
team modify z7WITHER seeFriendlyInvisibles false
team modify z7ELDER_GUARDIAN seeFriendlyInvisibles false

# Zombies have invisible nametags
team modify z0ZOMBIE nametagVisibility never
team modify z0HUSK nametagVisibility never
team modify z0VINDICATOR nametagVisibility never
team modify z0DROWNED nametagVisibility never
team modify z1SKELETON nametagVisibility never
team modify z1WITHER_SKELETON nametagVisibility never
team modify z1PILLAGER nametagVisibility never
team modify z1GUARDIAN nametagVisibility never
team modify z2CREEPER nametagVisibility never
team modify z2SPIDER nametagVisibility never
team modify z3BLAZE nametagVisibility never
team modify z3CHICKEN_NUGGET nametagVisibility never
team modify z3OCELOT nametagVisibility never
team modify z3SNOWMAN nametagVisibility never
team modify z3CHILLAGER nametagVisibility never
team modify z3BEE nametagVisibility never
team modify z3PHANTOM nametagVisibility never
team modify z3WOLF nametagVisibility never
team modify z4HOGLIN1 nametagVisibility never
team modify z4HOGLIN2 nametagVisibility never
team modify z4HOGLIN3 nametagVisibility never
team modify z4SILVERFISH nametagVisibility never
team modify z5ENDERMAN nametagVisibility never
team modify z5GOLEM nametagVisibility never

team modify z6JOHNNY nametagVisibility never
team modify z6GHAST nametagVisibility never
team modify z6RAVAGER nametagVisibility never

team modify z7DRAGON nametagVisibility never
team modify z7WITHER nametagVisibility never
team modify z7ELDER_GUARDIAN nametagVisibility never

# Dead player's name tag shouldn't be visible and they should not be able to see or hit other invisible dead players.
team modify z8DEAD nametagVisibility never
team modify z8DEAD seeFriendlyInvisibles false
team modify z8DEAD friendlyFire false

# Collisions between boss players and boss entities are disabled.
team modify z7DRAGON collisionRule never
team modify z7WITHER collisionRule never
team modify z7ELDER_GUARDIAN collisionRule never