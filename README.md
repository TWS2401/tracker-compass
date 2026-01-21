# Tracker Compass
A Minecraft datapack that adds a compass which tracks the nearest player. Primarily intended for Minecraft Manhunts.

## Features
- Track multiple players - the compass will point to the nearest target. Even works on non-player entities!
- Remembers the last position tracked, even if the runner enters a different dimension. Also works if the hunter dies (but the compass will not remember the dimension it was last used in before the hunter's death).
- Hunters are not able to lose or drop their compass.
- Runners are not able to pick up or use tracker compasses.

## Installation
- Download [latest release](https://github.com/TWS2401/tracker-compass/releases)
- Locate your world's datapack folder (`.minecraft/saves/[your_world_name]/datapacks`)
- Place the datapack into the datapack folder
- Make sure the datapack is enabled by using `/datapack list`. If it isn't, enable it with `/datapack enable "file/tracker-compass.zip"`

## How to Use
To set the Hunters, use:
```
/team join Hunters player_name
```

To set the Runners, use:
```
/team join Runners player_name
```

To start the game and give the Hunters their compasses, use:
```
/function tracker:start
```
This will also clear everybody's inventories, set each team to survival mode and max out their health and food levels.

Hunters can refresh their compass by right-clicking them.

## Settings
This datapack automatically disables the locator bar upon loading to prevent runners from knowing the hunters' whereabouts, but this can be toggled with the `locator_bar` gamerule:
```
/gamerule locator_bar (true|false)
```

The tracker can be set to show the tracked player's y-coordinate (off by default):
```
/scoreboard players set y_mode TrackerSettings (0|1) (0 for off, 1 for on)
```

Hunters respawn with compasses by default, but this can be disabled:
```
/scoreboard players set respawn TrackerSettings (0|1) (0 for off, 1 for on)
```

## Commands
| Command                                                  | Description                                                                     |
|----------------------------------------------------------|---------------------------------------------------------------------------------|
| `/team join Hunters player_name`                         | Adds the user `player_name` to the Hunters team.                                |
| `/team join Runners player_name`                         | Adds the user `player_name` to the Runners team (will be tracked by compasses). |
| `/function tracker:start`                                | Clears inventories, heals all and gives all hunters tracker compasses.          |
| `/function tracker:get_compass`                          | Gives the executor a tracker compass.                                           |
| `/function tracker:setup/install`                        | Initialises the datapack. Automatically called upon datapack load.              |
| `/function tracker:setup/uninstall`                      | Removes all variables used by the datapack from the scoreboard.                 |
| `/scoreboard players set y_mode TrackerSettings (0\|1)`  | Toggles whether compasses will show the target's y-coordinate.                  |
| `/scoreboard players set respawn TrackerSettings (0\|1)` | Toggles whether hunters will respawn with their compass.                        |
