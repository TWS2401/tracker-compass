execute at @s unless items entity @p[distance=..3] container.* compass[minecraft:custom_data={tracker:true}] unless items entity @p[distance=..3] weapon.offhand compass[minecraft:custom_data={tracker:true}] run return run data modify entity @s PickupDelay set value 0

kill @s
