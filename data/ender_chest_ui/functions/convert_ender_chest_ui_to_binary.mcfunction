#> ender_chest_ui:convert_ender_chest_ui_to_binary
#@public
#@input storage : _[-1].Item.tag.ender_chest_ui.id int (0 <= ender_chest_ui.id <= 65535)
#@output storage : _[-1].Item.tag.ender_chest Object

execute store result score $ ender_chest_ui.action run data get storage : _[-1].Item.tag.ender_chest_ui.id 32768

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.32768 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.16384 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.8192 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.4096 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.2048 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.1024 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.512 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.256 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.128 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.64 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.32 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.16 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.8 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.4 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.2 set value 1b

scoreboard players operation $ ender_chest_ui.action += $ ender_chest_ui.action
execute if score $ ender_chest_ui.action matches ..-1 run data modify storage : _[-1].Item.tag.ender_chest_ui.1 set value 1b
