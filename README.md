# Tracker Compass
A Minecraft datapack that adds a compass which tracks the nearest player. Primarily intended for Minecraft Manhunts.

## Installation
- Locate your world's datapack folder
- Place the datapack into the datapack folder
- Enable the datapack with `/datapack enable "file/tracker-compass.zip"`

## How to Use
To set the Hunters, use  
`/team join Hunters player_name`

To set the Runners, use  
`/team join Runners player_name`

To start the game and give the Hunters their compasses, use  
`/function tracker:start`

Hunters can refresh their compass by right-clicking them.

The compass will remember the last position tracked, even if the runner enters a different dimension. This also works if the hunter dies, but the compass will not remember the dimension it was last used in before the hunter's death.

## Settings
The tracker can be set to show the tracked player's y-coordinate (off by default):  
`/scoreboard players set y_mode TrackerSettings 0|1 (0 for off, 1 for on)`

Hunters respawn with compasses by default, but this can be disabled:  
`/scoreboard players set respawn TrackerSettings 0|1 (0 for off, 1 for on)`
