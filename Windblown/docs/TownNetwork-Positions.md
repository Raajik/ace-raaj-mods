# Town Network — NPC & Portal Positions

This file tracks all custom NPC spawns and portal additions in the Town
Network (landblock `0x0007`). Update this file whenever positions or
destinations change.

## NPCs

| NPC | WCID | Cell | Position | Facing | 
|-----|------|------|----------|--------|
| Jochi (gem vendor) | 810000 | `0x00070155` | `[78.482, -60.464, 0.005]` | W=0.370 Z=-0.929 |
| Timewalker Kaleb (trophy failsafe) | 810001 | `0x00070155` | `[78.179, -61.993, 0.005]` | W=0.913 Z=-0.407 |
| Swayss (skill reset) | 810002 | `0x00070155` | `[79.886, -61.775, 0.005]` | W=0.921 Z=0.389 |

## Portal Additions

| Portal | Dest WCID | Cell | Position | Facing |
|--------|-----------|------|----------|--------|
| Ayan Baqur | 7194 | `0x0007010B` | `[3.711, -70.002, 0.005]` | W=-0.706 Z=0.708 |
| Wai Jhou | 4218 | `0x00070186` | `[146.289, -69.983, 0.005]` | W=0.709 Z=0.705 |
| Abandoned Mines | 1595 | `0x0007014F` | `[69.914, -176.287, 0.005]` | W=-1.000 Z=0.003 |
| Asheron's Castle | 35293 | `0x00070104` | `[69.914, -168.372, -5.995]` | W=1.000 Z=-0.003 |

## SQL Files

| File | Purpose |
|------|---------|
| `03_TownNetworkSpawns.sql` | NPC spawns (Jochi, Swayss) |
| `05_TownNetworkPortals.sql` | Portal additions |