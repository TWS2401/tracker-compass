execute as @e[nbt={Item:{id:"minecraft:compass",components:{"minecraft:custom_data":{tracker:true}}}},type=item] run data modify entity @s PickupDelay set value 0

execute if score respawn TrackerSettings matches 1 as @a[team=Hunters,scores={RespawnTimer=1}] run function tracker:get_compass

clear @a[team=Runners] compass[custom_data={tracker:true}]
