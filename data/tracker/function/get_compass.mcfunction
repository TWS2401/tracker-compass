##as @p[team=Hunters]

execute store result storage tracker:compass_target x int 1 run scoreboard players get @s CompassX
execute store result storage tracker:compass_target y int 1 run scoreboard players get @s CompassY
execute store result storage tracker:compass_target z int 1 run scoreboard players get @s CompassZ

function tracker:give_compass_target with storage tracker:compass_target
