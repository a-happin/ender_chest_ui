ecui-core
==

Core library for creating Ender Chest User Interface.

## Features

### 用語

| Name | Description |
|:-:|-|
| ecui | Ender Chest User Interface |
| モード | ecuiのモード。メニューモードとストレージモードの2種類|
| メニューモード | モードのひとつ。アクションボタンが並び、アイテムの保存はできない |
| ストレージモード | モードのひとつ。本来のエンダーチェストの機能(を再現したもの) |
| action | ecuiでアイテムをクリックしたときに発動する処理 |
| save | コンテンツモードのとき、エンダーチェスト内にあるアイテムを保存する処理 |
| restore | モードに応じてエンダーチェスト内にアイテムを詰める処理 |
| コンテンツセーフティ | メニューモードからコンテンツモードへの遷移に失敗したときにコンテンツを保護します |
| アイテムレスキュー | ecuiにアイテムを置いてしまっても戻ってきます |
| 遷移/遷移アクション | ecuiのモードを変更するアクション |

### 使用しているスコアボード

- `ecui.mode` -- 現在のモード
- `ecui.action` -- 実行するアクションの判別用
- `ecui.safety` -- メニューモードからコンテンツモードへの遷移に失敗したときにコンテンツを保護するためのフラグ
- `ecui.slotN` -- アイテムレスキュー用(`{Slot: N}`に`ecui`用のアイテムが入っているかどうか)

### アイテムに付与するカスタムタグの説明
- `ecui` (Object) -- このアイテムをクリックしたときに実行するアクションidを2進数表現で指定します。  
```
// 例:
10
ecui: {2: true, 8: true}
```

### `tag/function ecui:save`
エンダーチェストを開いて、最初のアクションを実行する前に呼ばれます。scoreboard `ecui.mode` の値に応じて、エンダーチェストにあるアイテムを保存する関数を呼び出してください。

- ストレージモードでない時は保存してはいけません。

### `tag/function ecui:action`
アクションを実行するべきタイミングで呼ばれます。scoreboard `ecui.action`の値に応じてアクションを実行する関数を呼び出してください。遷移アクションの場合はscoreboard `ecui.mode`の値を変更してください。

- エンダーチェストを開いたときは`ecui.action == -1`です。

### `tag/function ecui:restore`
エンダーチェスト内にアイテムを装填するべきタイミングで呼ばれます。scoreboard `ecui.mode`の値に応じてエンダーチェストの中身を変更してください。

- 27スロット全て変更してください。

### メニュー用のアイテムの生成方法
- `loot_table`(多分一番軽い)
- 外部ツール
- `data modify`など`storage`を利用してアイテムを構築する(おすすめ)

## Usage

### 最初にやること
まずはあなたのデータパックに`tag/function ecui:action`, `tag/function ecui:restore`, `tag/function ecui:save`を用意します。  
ここに`function`を登録します。  
- `tag/function ecui:action`に`function ecui:action`
- `tag/function ecui:restore`に`function ecui:restore`
- `tag/function ecui:save`に`function ecui:save`
を登録したとして進めます。

また、フォルダ`ecui:action/`, `ecui:restore/`, `ecui:save/`を作っておくと良いでしょう。

### ecuiのアイテムを追加する(例)

アイテム生成処理は重いのでcacheが効くようにします

- `function ecui:item/item_name/`
- `function ecui:item/item_name/impl`

を作成します

```mcfunction
#> ecui:item/item_name/
execute unless data storage ecui: cache.item_name run function ecui:item/item_name/impl
data modify storage shulker_loot: Items append from storage ecui: cache.item_name
```
```mcfunction
#> ecui:item/item_name/impl
#@within function ecui:item/item_name/

### initialize
data remove storage shulker_loot: Item

### id
data modify storage shulker_loot: Item.id set value "minecraft:light_gray_stained_glass_pane"
### Count
data modify storage shulker_loot: Item.Count set value 1b
### tag
data modify storage shulker_loot: Item.tag.Enchantments set value [{}]
data modify storage shulker_loot: Item.Name set value '{"text": "●何かが起きる", "color": "light_purple"}'
function shulker_loot:set_name/
data modify storage shulker_loot: Item.Lore append value '{"text": "クリックすると"}'
data modify storage shulker_loot: Item.Lore append value '{"text": "何かが起きる！！！"}'
function shulker_loot:set_lore/
data modify storage shulker_loot: Item.ecui_action_id set value 0
function ecui:core/convert_ecui_action_id_to_binary

### save to cache
data modify storage ecui: cache.item_name set from storage shulker_loot: Item
```

### アクションを追加する(例)

以下を追加
```mcfunction
#> ecui:action
## transition to storage mode
execute if entity @s[scores={ecui.action=10000..10008}] run scoreboard players operation @s ecui.mode = @s ecui.action

execute if entity @s[scores={ecui.action=1000}] run function ecui:action/do_something
```

### restore(例)

```mcfunction
#> ecui:restore

## restore menu
execute if entity @s[scores={ecui.mode=1}] run function ecui:restore/menu_root

## restore storage
execute if entity @s[scores={ecui.mode=10000}] run function ecui:restore/storage/vanilla
execute if entity @s[scores={ecui.mode=10001}] run function ecui:restore/storage/extra1
execute if entity @s[scores={ecui.mode=10002}] run function ecui:restore/storage/extra2
```

### save(例)
```mcfunction
#> ecui:save

## ecui.mode == null => ecui datapack導入後初めてエンダーチェストを開く => 普通のエンダーチェストとして使っているはずなのでvanillaにsave
execute unless entity @s[scores={ecui.mode=-2147483648..2147483647}] run function ecui:save/vanilla

execute if entity @s[scores={ecui.mode=1000}] run function ecui:save/vanilla
```


## Requirement

- [corelib.player.datapack](https://github.com/a-happin/corelib.player.datapack)
- [lib.shuker_loot.datapack](https://github.com/a-happin/lib.shulker_loot.datapack)
- [lib.datapack](https://github.com/a-happin/lib.datapack)

## Installation

## License
Creative Commons Zero v1.0 Universal
