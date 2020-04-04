# README

## アプリ名
## Kodogru

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
準備中

## テストユーザー
準備中

## デモ
準備中

## 使用技術
* Ruby version: 2.5.1
* Rails version: 5.2.4.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## DB設計
### Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true, add_index :users, :name|
|mail|string|null: false, unique: true|
|password|string|null: false, unique: true|
