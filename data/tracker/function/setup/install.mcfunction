scoreboard objectives add TrackerSettings dummy
scoreboard objectives add RespawnTimer custom:time_since_death
scoreboard objectives add CompassCooldown dummy
scoreboard objectives add CompassX dummy
scoreboard objectives add CompassY dummy
scoreboard objectives add CompassZ dummy

execute unless score y_mode TrackerSettings matches 1 run scoreboard players set y_mode TrackerSettings 0
execute unless score respawn TrackerSettings matches 0 run scoreboard players set respawn TrackerSettings 1

team add Hunters
team add Runners

gamerule locator_bar false
