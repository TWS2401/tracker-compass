gamemode survival @a[team=Hunters]
gamemode survival @a[team=Runners]

effect give @a saturation 1 255 true
effect give @a instant_health 1 255 true

clear @a

execute as @a[team=Hunters] run function tracker:get_compass
