#> ender_chest_ui:rescue_items/
#@within function ender_chest_ui:main/

data remove storage : _[-1].Items[].Slot

data modify storage : _ append value {PickupDelay: 0s}
  data modify storage : _[-1].Owner set from entity @s UUID
  function ender_chest_ui:rescue_items/loop
data remove storage : _[-1]
