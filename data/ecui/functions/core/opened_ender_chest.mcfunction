#> ecui:core/opened_ender_chest
#@within advancement ecui:core/opened_ender_chest

## reset
advancement revoke @s only ecui:core/opened_ender_chest

## set -1 to detect player opened ender_chest
scoreboard players set @s ecui.action -1
function ecui:core/main
