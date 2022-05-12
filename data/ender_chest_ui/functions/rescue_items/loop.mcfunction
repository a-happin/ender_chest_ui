#> ender_chest_ui:rescue_items/loop
#@within
#  function ender_chest_ui:rescue_items/loop
#  function ender_chest_ui:rescue_items/

#>
#@within
#  function ender_chest_ui:rescue_items/loop
#  function ender_chest_ui:rescue_items/impl
  #declare tag ender_chest_ui.rescue

data modify storage : _[-1].Item set from storage : _[-2].Items[-1]
data remove storage : _[-2].Items[-1]
summon item ~ ~ ~ {PickupDelay: 32767s, Item: {id: "ice", Count: 1b}, Tags: ["ender_chest_ui.rescue"]}
execute as @e[type=item,tag=ender_chest_ui.rescue,distance=0] run function ender_chest_ui:rescue_items/impl
execute if data storage : _[-2].Items[-1] run function ender_chest_ui:rescue_items/loop
