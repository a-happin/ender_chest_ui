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
|action発火用アイテム|Ender Chest UIに配置される特殊アイテム。クリックしたときにactionが発火するアイテム|

### Scores

|score|description|
|:--|:--|
|ender_chest_ui.mode|現在のモード|
|ender_chest_ui.action|実行するアクション。-1~65535|

### Event Handler

#### `tag/function ender_chest_ui:action`

- アクションを実行するべきタイミングで呼ばれます
- `score @s ender_chest_ui.action`の値に応じて、アクションを実行してください
- 遷移アクションの場合は`score @s ender_chest_ui.mode`の値を変更してください
- エンダーチェストを開いたときは`score @s ender_chest_ui.action == -1`です

#### `tag/function ender_chest_ui:restore`

- エンダーチェスト内にアイテムを配置するべきタイミングで呼ばれます
- scoreboard `score @s ender_chest_ui.mode`の値に応じて`storage : _[-1].EnderItems`を更新し、エンダーチェスト内のアイテムも書き換えてください
- `storage : _[-1].EnderItems`とエンダーチェストの中身が同じになるようにしてください
  - 不整合が起きると保護機能がバグります…
- 27スロット全て変更してください
  - restore直前のエンダーチェストの中身が適切であることを期待してはいけません
- このデータパックはエンダーチェストの中身を書き換える方法を提供しません
  - shulker loot trickと[PlayerItemTuner](https://github.com/Ai-Akaishi/PlayerItemTuner)のような方法を選択できるようにするためです
- `storage : _[-1].EnderItems`を書き換えなければならないのはプレイヤーNBTのシリアライズ処理を避けるためです
  - storageにアイテムを構築→shulker lootでコピー→`/data get entity @s EnderItems`で何を配置したか取得 は明らかに効率が悪い
- 配置するアイテムはaction発火用アイテムかそれ以外
  - 基本的にはaction発火用アイテムで埋めること
  - action発火用アイテムが無いSlotはvanillaのエンダーチェストの機能のように振る舞うべき
- おすすめの方法
  1. `storage : _[-1].EnderItems`を書き換える
  2. shulker loot trickを使ってエンダーチェストにアイテムを配置する

#### `tag/function ender_chest_ui:save`

- action実行直前に呼ばれます
- `score @s ender_chest_ui.mode`の値に応じて、適切な場所に`storage : _[-1].Items`を保存してください
- Itemsにはaction発火用アイテムは含まれません

### action発火用アイテム

- アイテムのNBTに`ender_chest_ui`(Object)をつけると、action発火用アイテムになります
- 2進数化したidを設定しておくと、クリックしたときにその数値のactionが発火します
- 設定には`function ender_chest_ui:convert_ender_chest_ui_to_binary`が便利です

```mcfunction
data modify storage : _[-1].Item set value {id: "light_gray_stained_glass_pane", Count: 1b}
data modify storage : _[-1].Item.tag.ender_chest_ui.id set value 1000
function ender_chest_ui:convert_ender_chest_ui_to_binary
# ==> Item: {id: "light_gray_stained_glass_pane", Count: 1b, tag: {ender_chest_ui: {id: 1000, 512: 1b, 256: 1b, 128: 1b, 64: 1b, 32: 1b, 8: 1b}}}
```

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

## Requirement

- [player.tick](https://github.com/a-happin/player-datapacks/tree/master/01.player.tick)
- [player.sneak_time](https://github.com/a-happin/player-datapacks/tree/master/10.player.sneak_time)
- [player.dropped](https://github.com/a-happin/player-datapacks/tree/master/10.player.dropped)

## Installation

## License
Creative Commons Zero v1.0 Universal
