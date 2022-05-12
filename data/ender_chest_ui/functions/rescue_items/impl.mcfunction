#> ender_chest_ui:rescue_items/impl
#@within function ender_chest_ui:rescue_items/loop

data modify entity @s {} merge from storage : _[-1]
tag @s remove ender_chest_ui.rescue
