ender_chest_ui
==

Framework for creating Ender Chest User Interface.

---

## ⚠ Warning

This executes `/clear` every tick, which may result in low datapack performance.

---

## Features

### 用語

|Name|Description|
|:-:|-|
|ender_chest_ui / Ender Chest UI|Ender Chest User Interface|
|モード|Ender Chest UIのモード。整数|
|action|Ender Chest UIでアイテムをクリックしたときに発火する処理|
|save|モードに応じてエンダーチェスト内にあるアイテムを保存する処理|
|restore|モードに応じてエンダーチェスト内にアイテムを配置する処理|
|コンテンツセーフティ|restoreに失敗したときにsaveしないようにする処理|
|rescue / アイテムレスキュー|Ender Chest UIがアイテムを消滅させないようにする処理|
|保護機能|コンテンツセーフティとrescue|
|遷移 / 遷移アクション|Ender Chest UIのモードを変更するアクション|

### Scores

|score|description|
|:--|:--|
|ender_chest_ui.mode|現在のモード。0~65536|
|ender_chest_ui.action|実行するアクション。-1~65536|

### アイテムに付与するカスタムタグの説明
- `ender_chest_ui` (Object) -- このアイテムをクリックしたときに実行するアクションidを2進数表現で指定します。  
```
// 例:
10
ender_chest_ui: {2: true, 8: true}
```

### Event Handler

### `tag/function ender_chest_ui:save`

- action実行直前に呼ばれます
- `score @s ender_chest_ui.mode`の値に応じて、適切な場所に`storage : _[-1].Items`を保存してください
- Itemsにはaction発火用のアイテムは含まれません

### `tag/function ender_chest_ui:action`

- アクションを実行するべきタイミングで呼ばれます
- `score @s ender_chest_ui.action`の値に応じて、アクションを実行してください
- 遷移アクションの場合は`score @s ender_chest_ui.mode`の値を変更してください
- エンダーチェストを開いたときは`score @s ender_chest_ui.action == -1`です

### `tag/function ender_chest_ui:restore`

- エンダーチェスト内にアイテムを配置するべきタイミングで呼ばれます
- scoreboard `score @s ender_chest_ui.mode`の値に応じて`storage : _[-1].EnderItems`を更新し、エンダーチェスト内のアイテムも書き換えてください
- `storage : _[-1].EnderItems`とエンダーチェストの中身が同じになるようにしてください
  - 不整合が起きるとrescue関連がバグる可能性があります…
- 27スロット全て変更してください
  - restore直前のエンダーチェストの中身が適切であることを期待してはいけません
- このデータパックはエンダーチェストの中身を書き換える方法を提供しません
  - shulker loot trickと[PlayerItemTuner](https://github.com/Ai-Akaishi/PlayerItemTuner)のような方法を選択できるようにするためです
- `storage : _[-1].EnderItems`を書き換えなければならないのはプレイヤーNBTのシリアライズ処理を避けるためです
  - storageにアイテムを構築→shulker lootでコピー→`/data get entity @s EnderItems`で何を配置したか取得 は明らかに効率が悪い
- おすすめの方法
  1. `storage : _[-1].EnderItems`を書き換える
  2. shulker loot trickを使ってエンダーチェストにアイテムを配置する

### メニュー用のアイテムの生成方法

- `storage`からアイテムを構築する(おすすめ)

## Usage

### Example

```mcfunction
#> example:ender_chest_ui/action/
#@within tag/function ender_chest_ui:action
execute if entity @s[scores={ender_chest_ui.action=..-1}] run scoreboard players set @s ender_chest_ui.action 0
execute if entity @s[scores={ender_chest_ui.action=0}] run scoreboard players set @s ender_chest_ui.mode 0
execute if entity @s[scores={ender_chest_ui.action=1}] run scoreboard players set @s ender_chest_ui.mode 1
execute if entity @s[scores={ender_chest_ui.action=2}] run say hello
```

```mcfunction
#> example:ender_chest_ui/restore/
#@within tag/function ender_chest_ui:restore
execute if entity @s[scores={ender_chest_ui.mode=0}] run function example:ender_chest_ui/restore/root_menu
execute if entity @s[scores={ender_chest_ui.mode=1}] run function example:ender_chest_ui/restore/vanilla_storage
```

```mcfunction
#> example:ender_chest_ui/save/
#@within tag/function ender_chest_ui:save
execute if entity @s[scores={ender_chest_ui.mode=1}] run function example:ender_chest_ui/save/vanilla_storage
```

### ender_chest_uiのアイテムを追加する(例)

- アイテム生成処理は重いのでcacheが効くようにします

```mcfunction
#> example:ender_chest_ui/item/sample_item/
#@within function example:ender_chest_ui/restore/**
execute unless data storage ender_chest_ui: cache.sample_item run function example:ender_chest_ui/item/sample_item/impl
data modify storage : _[-1].EnderItems append from storage ender_chest_ui: cache.sample_item
```
```mcfunction
#> example:ender_chest_ui/item/sample_item/impl
#@within function ender_chest_ui:item/sample_item/

### initialize
data remove storage : _[-1].Item

### id
data modify storage : _[-1].Item.id set value "minecraft:light_gray_stained_glass_pane"
### Count
data modify storage : _[-1].Item.Count set value 1b
### tag
data modify storage : _[-1].Item.tag.Enchantments set value [{}]
data modify storage : _[-1].Item.tag.display.Name set value '{"text": "●何かが起きる", "color": "light_purple", "italic": false}'
data modify storage : _[-1].Item.Lore append value '{"text": "クリックすると"}'
data modify storage : _[-1].Item.Lore append value '{"text": "何かが起きる！！！"}'
function shulker_loot:set_lore/
data modify storage : _[-1].Item.ender_chest_ui_action_id set value 0
function ender_chest_ui:convert_ender_chest_ui_to_binary

### save to cache
data modify storage ender_chest_ui: cache.sample_item set from storage : _[-1].Item
```

## Requirement

- [player.tick](https://github.com/a-happin/player-datapacks/tree/master/01.player.tick)
- [player.sneak_time](https://github.com/a-happin/player-datapacks/tree/master/10.player.sneak_time)

## Installation

## License
Creative Commons Zero v1.0 Universal
