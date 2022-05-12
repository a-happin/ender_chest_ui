#> ender_chest_ui:handler/opened_ender_chest
#@within advancement ender_chest_ui:handler/opened_ender_chest

advancement revoke @s only ender_chest_ui:handler/opened_ender_chest
scoreboard players set @s ender_chest_ui.action -1
function ender_chest_ui:main/
