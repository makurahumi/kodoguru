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
準備中

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