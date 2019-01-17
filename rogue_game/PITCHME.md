# rogue_game
 produced by **tanacchi**

---

## 自己紹介

---
@snap[east]
<img src="rogue_game/assets/tanacchi.jpeg" />
@snapend

@snap[west]
<br>
田中 大揮 ( *tanacchi* )<br><br>

九州工業大学 B3  
ロボット開発プロジェクト  
@size[0.5em](つくばチャレンジに参加)<br><br>

C++ 機械学習 Rails 初心者  <br><br>

@fa[twitter icon-size2] *q111026d*　@fa[github  icon-size2] *tanacchi*  
@snapend
---

## rogue_game とは

---
@snap[north-west]
### rogue_game とは
@snapend

*tanacchi* が **C++** で１からつくる  
ローグライクゲーム

---
@snap[north-west]
### rogue_game とは
@snapend

ラ○ィの大冒険

---
@snap[north-west]
### rogue_game とは
@snapend

＊❍ミィの大冒険の画像＊

---
@snap[north-west]
### rogue_game とは
@snapend

<img src="rogue_game/assets/rogue_wiki.png" />

---

## 動機

---
@snap[north-west]
### 動機
@snapend

ロボット飽きたわ

---
@transition[none]
@snap[north-west]
### 動機
@snapend

~~ロボット飽きたわ~~

---
@snap[north-west]
### 動機
@snapend

( ˘⊖˘) 。o( （ある程度の規模の）ゲームシステムを（C++ で）構築してみたい )

---

## コンセプト

---
@snap[north-west]
### コンセプト
@snapend

@size[0.5em](グラフィックには興味がないので)  
伝統的なローグライクゲームと同じ
**テキストユーザーインターフェース**

---
@snap[north-west]
### コンセプト
@snapend

伝統的なローグライクゲームの欠点
### 操作性が良くない

コマンド | 動作
--- | ---
`r` | 巻物を読む
`w` |  武器を手に構える
`q` | 飲み薬を飲む

矢印キーと決定キーで足りるじゃん・・・ | 

---
@snap[north-west]
### コンセプト
@snapend

* （伝統的な）ロマンあふれる感じ  
* 取っつきやすさ  |
* オジリナリティ  |

---

## 開発状況

---
@snap[north-west]
### 開発状況
@snapend


<img src="rogue_game/assets/Issues.png" />
### ひとり Issue

---
@snap[north-west]
### 開発状況
@snapend


<img src="rogue_game/assets/IssueContent.png" />
### ひとり Issue

---
@snap[north-west]
### 開発状況
@snapend

<img src="rogue_game/assets/ToDoList.png" />
### ひとり Project 

---
## 進捗

---
@snap[north-west]
### 進捗
@snapend

512 commit  
1748 行  

（まだまだ駆け出し）

---
@snap[north-west]
### 進捗
@snapend

* マップ(json 形式)の読み込み | 
* プレイヤー操作  | 
* アイテム取得＆使用  |

---
@snap[north-west]
### なぜ json ?
@snapend

```json
...
 {
     "type": "floor"
 },
 {
     "type": "door"
 },
 {
     "type": "path"
 },
...
```

```json
...
 {
     "index": "693",
     "type": "gold",
     "amount": "100"
 },
...
```
---
@snap[north-west]
### なぜ json ?
@snapend

* 要素の属性・パラメータを記述できる  | 
* 依存パッケージを最小限に |
  - 依存パッケージは Boost と ncurses のみ

---

## 今後の展望

---
@snap[north-west]
### 今後の展望
@snapend

* モンスター（敵）の実装 |
* マップ自動生成 |
* より美しく、拡張しやすい構造に | 
   - 隠し通路 |
   - 特殊攻撃 |

まだまだこれから

---

## さいごに

---
@snap[north-west]
### さいごに
@snapend

GitPitch よさげです
