##as @p

execute as @s[team=Runners] run title @s actionbar [{"text":"You cannot use this compass!","color":"red"}]
execute as @s[team=Runners] run return fail

execute unless entity @n[team=Runners] run title @s actionbar [{"text":"No players to track!","color":"red"}]
execute unless entity @n[team=Runners] run return fail

execute store result score @s CompassX run data get entity @n[team=Runners] Pos[0]
execute store result score @s CompassY run data get entity @n[team=Runners] Pos[1]
execute store result score @s CompassZ run data get entity @n[team=Runners] Pos[2]
execute store result storage tracker:compass_target x int 1 run scoreboard players get @s CompassX
execute store result storage tracker:compass_target y int 1 run scoreboard players get @s CompassY
execute store result storage tracker:compass_target z int 1 run scoreboard players get @s CompassZ
data modify storage tracker:compass_target dim set from entity @s Dimension

execute if score y_mode TrackerSettings matches 0 run title @s actionbar [{"text":"Compass is now pointing to ","color":"green"},{"selector":"@n[team=Runners]","color":"green"},{"text":".","color":"green"}]
execute if score y_mode TrackerSettings matches 1 run title @s actionbar [{"text":"Compass is now pointing to ","color":"green"},{"selector":"@n[team=Runners]","color":"green"},{"text":" (y = ","color":"green"},{storage:"tracker:compass_target",nbt:"y","color":"green"},{"text":").","color":"green"}]

function tracker:set_compass_target with storage tracker:compass_target
