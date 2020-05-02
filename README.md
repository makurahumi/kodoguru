# README

## アプリ名
## Grumemo

## 概要
お気に入りの飲食店やお弁当販売店などをレビュー形式で投稿、共有、閲覧できるアプリです。  
お店の外観と住所など詳細情報とお店のメニューに関する情報をそれぞれ投稿する事ができます。  
また、マイページでは自分の投稿したお店の情報を確認できます。

## 制作背景
某グルメサイトなど、現在提供されているサービスはお店側・企業側に立ったものが多く感じました。   
感想投稿機能などもありますが、宣伝のような投稿が目立つ点に私は疑問を強く持ち、CtoCを基本とし、レビュー形式でお気に入りの飲食店を紹介できるようなアプリを制作しようと考えました。  
また自分のお気に入りのお店をストックし、アルバムのように使用していただくことも想定しています。  
ユーザー側に寄り添える簡易グルメレビューサービスを作ってみたいと思い、開発しました。

## リンク
https://gurumemo.herokuapp.com/

## テストユーザー
準備中

## デモ
### TOPページ
* ログインしなくても全てのユーザーが投稿した店舗情報のサムネイルが表示されます。
* ログインの有無によって、ボタン部分をif文で分岐処理。
* 非ログイン時は、新規登録ボタンとログインボタンを表示。
* ログイン時には、店舗情報投稿ボタンとマイページボタンを表示。
* gem kaminariでページネーションを実装。

### 新規登録ページ
* トップページ新規登録ボタンから遷移。
* deviseの新規登録画面をカスタマイズ。
* ニックネーム、Eメールアドレス、パスワードを入力しアカウントを作成する。
<img width="1059" alt="92d4ccc7e2a99ce9338d49ecd1ea61b6" src="https://user-images.githubusercontent.com/55948480/80858264-56a5a980-8c93-11ea-9fd6-5b32f5d9a553.png">

* エラーメッセージ表示。
![d8dd693d1060613a846bb5d386994d09](https://user-images.githubusercontent.com/55948480/80858946-0ed55100-8c98-11ea-994a-1aa351c3dada.gif)

### ログインページ
* トップページログインボタンから遷移。
* deviseのログイン画面をカスタマイズ。
* Eメールアドレス、パスワードを入力しログインする。
<img width="1061" alt="df9de4b50cd59eb4e7771cc138afffae" src="https://user-images.githubusercontent.com/55948480/80859570-f74c9700-8c9c-11ea-9517-c38c921650ca.png">

* エラーメッセージ表示。
![3e6421d19e235539170b4985da36d792](https://user-images.githubusercontent.com/55948480/80859631-4c88a880-8c9d-11ea-9de7-bc8bbdd1687b.gif)

### マイページ画面
* ログイン後、マイページボタンから遷移。

### ニックネーム変更画面
* マイページ、ニックネーム変更ボタンから遷移。
* ニックネームを変更できる。
<img width="1067" alt="226908d1bfe10373b333d6a0c100d35b" src="https://user-images.githubusercontent.com/55948480/80859899-10564780-8c9f-11ea-8cb6-b08a4a083a7b.png">

* エラーメッセージ表示
![cb42818d9bf9dc99ea276ccd1c5b5e5b](https://user-images.githubusercontent.com/55948480/80860039-244e7900-8ca0-11ea-99f6-97ef1ed12946.gif)

### ユーザー情報変更画面
* マイページ、ユーザー情報変更ボタンから遷移。
* Eメールアドレス、パスワードを変更できる。


## 使用技術
* Rubyバージョン: 2.5.1
* Railsバージョン: 5.2.4.1

* デプロイ: heroku
* 画像保存: AWS-S3

## 使用Gem
### フロントエンド系
* erb2haml
* haml-rails
* jquery-rails
* font-awesome-sass
* font-awesome-rails
* kaminari
### バックエンド系
* devise
* mini_magick
* carrierwave
* pry-rails
* active_hash

## DB設計
### Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true, add_index :users, :name|
|mail|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :restaurants
- has_many :menus

### Restaurantsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index :restaurants, name|
|cuisine_id|integer|null: false|
|form_id|integer|null: false|
|rate|integer||
|detail|string||
|prefecture_id|integer|null: false|
|city|string|null: false|
|block|string||
|building_name|string||
|access|string||
|open|time||
|closed|time||
|holiday|string||
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :images
- has_many :menus

### imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|restaurant_id|references|null: false, foreign_key: true|

### Association
- belongs_to :restaurant

### menusテーブル
|Column|Type|Options|
|------|----|-------|
|menuname|string|null: false|
|photo|string||
|price|integer|null: false|
|detail|string||
|restaurant_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: ture|

### Association
- belongs_to :restaurant
- belongs_to :user

## 実装予定機能
* 評価機能
* カテゴリー機能
* 検索機能