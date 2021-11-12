#> ecui:core/convert_ecui_action_id_to_binary
#@public

#>
#@private
  scoreboard objectives add _ dummy
  #declare storage _

execute store result score $ _ run data get storage _ stack[-1].Item.ecui_action_id 
data modify storage _ stack[-1].Item.tag.ecui set value {}

### 32768
scoreboard players operation $ _ *= #2^16 const
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.32768 set value true

### 16384
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.16384 set value true

### 8192
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.8192 set value true

### 4096
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.4096 set value true

### 2048
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.2048 set value true

### 1024
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.1024 set value true

### 512
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.512 set value true

### 256
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.256 set value true

### 128
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.128 set value true

### 64
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.64 set value true

### 32
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.32 set value true

### 16
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.16 set value true

### 8
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.8 set value true

### 4
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.4 set value true

### 2
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.2 set value true

### 1
scoreboard players operation $ _ += $ _
execute if score $ _ matches ..-1 run data modify storage _ stack[-1].Item.tag.ecui.1 set value true

data remove storage _ stack[-1].Item.ecui_action_id

scoreboard objectives remove _
