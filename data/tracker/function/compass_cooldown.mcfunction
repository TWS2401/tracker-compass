scoreboard players remove @s CompassCooldown 1
execute if score @s CompassCooldown matches 1.. run return run advancement revoke @s only tracker:compass_cooldown
scoreboard players reset @s CompassCooldown
