##as @p

execute unless score @s CompassCooldown matches 1.. run function tracker:use_tracker_compass

advancement revoke @s only tracker:use_tracker_compass
advancement revoke @s only tracker:compass_cooldown
scoreboard players set @s CompassCooldown 2
