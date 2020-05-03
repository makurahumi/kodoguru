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
### トップページ
* ログインしなくても全てのユーザーが投稿した店舗情報のサムネイルが表示されます。
<!-- トップページ写真 -->
![cedb8e0506726656ea06e9bc3d165088](https://user-images.githubusercontent.com/55948480/80899097-dccef800-8d46-11ea-9cc6-93e5492b65b9.jpg)
![aa829b9c2777d08c9ce0e56b15382a8e](https://user-images.githubusercontent.com/55948480/80899107-fb34f380-8d46-11ea-9b68-c3b0e973a9f3.jpg)
<img width="1028" alt="0b2ef5b556623b7a9eeb5eae6758552b" src="https://user-images.githubusercontent.com/55948480/80899109-0556f200-8d47-11ea-9c47-0ef72f12b0ce.png">

* ログインの有無によって、ボタン部分をif文で分岐処理しています。
* 非ログイン時は、新規登録ボタンとログインボタンを表示しています。
<!-- 非ログイン時ボタン部分写真 -->
<img width="1066" alt="577e819cf8009e4e5486a1bb424961ac" src="https://user-images.githubusercontent.com/55948480/80897510-688b5900-8d34-11ea-9170-29aaf16d9749.png">

* ログイン時には、店舗情報投稿ボタンとマイページボタンを表示しています。
<!-- ログイン時ボタン部分写真 -->
<img width="1065" alt="072287b7ab61ce0f6c072ccc16e7ebdb" src="https://user-images.githubusercontent.com/55948480/80897529-96709d80-8d34-11ea-8703-93e00e0179be.png">

* gem kaminariでページネーションを実装しています。
<!-- kaminariページネーション部分写真 -->
<img width="1058" alt="56b9f6b06a4311044446e4b0cc69a453" src="https://user-images.githubusercontent.com/55948480/80899058-55818480-8d46-11ea-814f-b24c12a7092f.png">

### 新規登録ページ
* トップページ新規登録ボタンから遷移します。
* deviseの新規登録画面をカスタマイズしました。
* ニックネーム、Eメールアドレス、パスワードを入力すると、アカウントが作成されます。
<!-- 新規登録ページ写真 -->
<img width="1059" alt="92d4ccc7e2a99ce9338d49ecd1ea61b6" src="https://user-images.githubusercontent.com/55948480/80858264-56a5a980-8c93-11ea-9fd6-5b32f5d9a553.png">

* エラーメッセージ表示
<!-- 新規登録ページエラーメッセージGIF -->
![d8dd693d1060613a846bb5d386994d09](https://user-images.githubusercontent.com/55948480/80858946-0ed55100-8c98-11ea-994a-1aa351c3dada.gif)

### ログインページ
* トップページログインボタンから遷移します。
* deviseのログイン画面をカスタマイズしました。
* Eメールアドレス、パスワードを入力するとログインします。
<!-- ログインページ写真 -->
<img width="1061" alt="df9de4b50cd59eb4e7771cc138afffae" src="https://user-images.githubusercontent.com/55948480/80859570-f74c9700-8c9c-11ea-9517-c38c921650ca.png">

* エラーメッセージ表示
<!-- ログインページエラーメッセージGIF -->
![3e6421d19e235539170b4985da36d792](https://user-images.githubusercontent.com/55948480/80859631-4c88a880-8c9d-11ea-9de7-bc8bbdd1687b.gif)

### 店舗情報投稿ページ
* ログイン後、投稿するボタンから遷移します。
* 画像投稿とテキスト、選択投稿部分を実装しています。
<!-- 店舗情報投稿ページ写真 -->
<img width="1059" alt="bec392567590241122d61d720f100b4e" src="https://user-images.githubusercontent.com/55948480/80896593-f4988300-8d2a-11ea-8d3d-c7376274060b.png">
<img width="1064" alt="9ba66b4de92e80583b51fa8511b04000" src="https://user-images.githubusercontent.com/55948480/80896597-1e51aa00-8d2b-11ea-9433-c4dd7c5da18e.png">
<img width="1064" alt="546511aa9f935af6d058097171d6828a" src="https://user-images.githubusercontent.com/55948480/80896602-29a4d580-8d2b-11ea-95fc-29477a98cd80.png">

* JavaScriptを使用し、画像のプレビューと複数投稿を実装しています。
<!-- 画像複数投稿GIF -->
![844d096062e3194fe5b2019d15347015](https://user-images.githubusercontent.com/55948480/80896664-b2bc0c80-8d2b-11ea-93bc-c17bd8b6dd7e.gif)


* エラーメッセージ表示
<!-- 店舗情報投稿ページエラーメッセージGIF -->
![6d3d868133659a96a946f2a45e9a8a0a](https://user-images.githubusercontent.com/55948480/80896633-6cff4400-8d2b-11ea-909b-2e8a19922016.gif)


### 店舗情報表示ページ
* ログイン、非ログインに関わらずトップページのお店のサムネイルから遷移します。
* 非ログイン時および投稿ユーザー以外が詳細ページに飛んだ場合、お店の情報とメニュー情報のみが表示されます。
<!-- 非ログイン時、詳細ページ写真 -->
<img width="1063" alt="88db3eb3f55202b85d951889aee892d8" src="https://user-images.githubusercontent.com/55948480/80897156-d766b300-8d30-11ea-8819-d807a1d83df4.png">
<img width="1064" alt="30b68ca3efa9a32b5d74dea9117dcd01" src="https://user-images.githubusercontent.com/55948480/80897161-ee0d0a00-8d30-11ea-84ec-60d3192eb391.png">
<img width="1070" alt="6721becb929eaaed46ff9ea44f67aa82" src="https://user-images.githubusercontent.com/55948480/80897166-f9f8cc00-8d30-11ea-9a21-3568ee18f40c.png">

* メニュー情報がある場合とない場合で表示が変化するようif文で分岐しています。
* メニュー情報ある場合、最大3件を表示しkaminariのページネーションで遷移できるようにしています。
<!-- メニュー情報が複数ある場合GIF -->
![3e51692babbded61827fd6edd7e8ab88](https://user-images.githubusercontent.com/55948480/80897081-41328d00-8d30-11ea-8868-16f2f888b5b6.gif)

* メニュー情報がない場合、投稿がないという文を表示しています。
<!-- メニュー情報がない場合写真 -->
<img width="1070" alt="56c6f3ba233df57f536be09f9b546f17" src="https://user-images.githubusercontent.com/55948480/80897059-029cd280-8d30-11ea-82ec-58fff849151b.png">

* 投稿ユーザーがログインした場合は編集ボタンと削除ボタン、メニューの投稿ボタンが表示されます。
<!-- 編集・削除ボタン部分写真 -->
<img width="1016" alt="018b07e1b258ce54879a14a9588dbb53" src="https://user-images.githubusercontent.com/55948480/80897217-a044d180-8d31-11ea-835d-787d88ef435d.png">

<!-- メニュー投稿部分写真 -->
<img width="970" alt="028dda858c1033cb6a737b2608f81fe3" src="https://user-images.githubusercontent.com/55948480/80897232-b488ce80-8d31-11ea-9d9a-356d0f62da99.png">

### 店舗情報編集ページ
* お店の情報を投稿したユーザーがログインした場合、店舗情報表示ページの編集するボタンから遷移します。
* お店の情報、画像を変更することができます。
<!-- 店舗情報編集ページ写真 -->
<img width="1063" alt="e287ca38b3c9d514ed44d2989328095c" src="https://user-images.githubusercontent.com/55948480/80897838-ff0d4980-8d37-11ea-8fd7-a989ae0a2010.png">
<img width="1065" alt="eb185bb1251ef8513837f693a159fe82" src="https://user-images.githubusercontent.com/55948480/80897848-0e8c9280-8d38-11ea-87a9-41df5f4288d4.png">
<img width="1061" alt="52af3035bdf01e3ec5481744f98e0425" src="https://user-images.githubusercontent.com/55948480/80897855-1ba98180-8d38-11ea-9a91-3b0529b3be30.png">

* 画像投稿部分は画像の変更と追加ができます。
<!-- 画像投稿部分GIF -->
![84b82190c8c06ec59b59cf7e51ff7270](https://user-images.githubusercontent.com/55948480/80897858-2bc16100-8d38-11ea-81d3-e3215b9e0805.gif)

* 変更後画像
<!-- 画像追加変更後画像 -->
<img width="1057" alt="b4f11da60da8ff73cff8082b61c89c6e" src="https://user-images.githubusercontent.com/55948480/80897882-6e833900-8d38-11ea-9a62-c281ed686209.png">

### 店舗情報削除機能
* 投稿ユーザーがログインしている場合、店舗情報表示ページの削除ボタンで機能します。
* 店舗情報に紐づいた、画像情報、メニュー情報全てを削除できます。
<!-- 店舗情報削除機能GIF -->
![b788391e100c90156ae3459ec8e528a2](https://user-images.githubusercontent.com/55948480/80897941-f5381600-8d38-11ea-8bb1-80c187b54875.gif)

### メニュー投稿ページ
* 店舗情報を投稿したユーザーのみ、メニュー投稿ボタンから遷移します。
* 画像投稿、メニュー名、値段、テキスト投稿を実装しています。
* 画像投稿にはJavaScriptを使用し、プレビュー表示を実装しています。
<!-- メニュー投稿ページ写真 -->
<img width="1061" alt="86aa87f3365b0392af61bc88729ff8bc" src="https://user-images.githubusercontent.com/55948480/80897579-29113c80-8d35-11ea-8e89-c6c64b1eb9c8.png">
<img width="1062" alt="b7736e3558b8f712c8ebad79230013db" src="https://user-images.githubusercontent.com/55948480/80897593-45ad7480-8d35-11ea-9dd0-c0e06abb7253.png">

* エラーメッセージ表示
<!-- メニュー投稿ページエラーメッセージGIF -->
![908a6d1b4ba89fa406ab0db620d9323b](https://user-images.githubusercontent.com/55948480/80897607-6f669b80-8d35-11ea-899c-29a4220b5f50.gif)

### メニュー情報表示ページ
* ログイン、非ログインに関わらず店舗情報表示ページ内のメニュー一覧表示から遷移します。
* 投稿されたメニューの情報が表示されます。
<!-- メニュー情報表示ページ写真 -->
![603585b35c730d5e0787cedc2f9f180f](https://user-images.githubusercontent.com/55948480/80897183-362c2c80-8d31-11ea-9f1a-e2e2d39018f7.png)

* 投稿したユーザーがログインしている場合、削除ボタンが表示されます。
<!-- メニュー情報表示ページボタン部分写真 -->
<img width="1055" alt="3090e7a22aff9841ed47cfc7ec263fbc" src="https://user-images.githubusercontent.com/55948480/80897653-fe73b380-8d35-11ea-87e9-2b937b3929c0.png">

### メニュー情報削除機能
* メニュー情報を投稿したユーザーがログインしている場合、メニュー情報表示ページの削除ボタンで機能します。
* メニュー情報を削除できます。
<!-- メニュー情報削除機能GIF -->
![e8767784aba706964f869a3a67830530](https://user-images.githubusercontent.com/55948480/80897635-ccfae800-8d35-11ea-961d-66298d9fbf5d.gif)

### マイページ
* ログイン後、マイページボタンから遷移します。
* 画面左側に、ニックネーム変更ボタン、ユーザー情報変更ボタン、ログアウトボタンが表示されます。
* 画面右側に、ログインユーザーが投稿したお店の情報を最大3件分一覧表示します。
* 3件を超える場合はページネーションで表示します。
<!-- マイページ写真 -->
![26b7103913d3c4a2b027e703767e0e13](https://user-images.githubusercontent.com/55948480/80897368-c5860f80-8d32-11ea-8773-fd91aaf8b763.jpg)
<img width="1058" alt="f827fdcbd4b4199c4cedb318ed787fd2" src="https://user-images.githubusercontent.com/55948480/80897425-4f35dd00-8d33-11ea-8391-23ca6bdf63cf.png">

### ニックネーム変更ページ
* マイページ、ニックネーム変更ボタンから遷移します。
* ニックネームの変更ができます。
<!-- ニックネーム変更ページ写真 -->
<img width="1067" alt="226908d1bfe10373b333d6a0c100d35b" src="https://user-images.githubusercontent.com/55948480/80859899-10564780-8c9f-11ea-8cb6-b08a4a083a7b.png">

* エラーメッセージ表示
<!-- ニックネーム変更ページエラーメッセージGIF -->
![81c89c1db37d12ff286d8b4f71f199af](https://user-images.githubusercontent.com/55948480/80897755-47783780-8d37-11ea-9551-f9e8f12533d4.gif)

### ユーザー情報変更ページ
* マイページ、ユーザー情報変更ボタンから遷移します。
* Eメールアドレス、パスワードを変更できます。
<!-- ユーザー情報変更ページ写真 -->
<img width="1070" alt="2060ddc9f5ee9b778ea622e0921e08c8" src="https://user-images.githubusercontent.com/55948480/80860260-7cd24600-8ca1-11ea-8895-3c8344d371df.png">

* エラーメッセージ表示
<!-- ユーザー情報変更ページエラーメッセージGIF -->
![bea747dd3c6f79f2af6d4e47344d06e9](https://user-images.githubusercontent.com/55948480/80860295-a9865d80-8ca1-11ea-8851-b1f330a76bfa.gif)

### ログアウト機能
* マイページ、ログアウトボタンからログアウトできます。
<!-- ログアウトGIF -->
![e66d8db0f6311f0aad2ddf9e41d61625](https://user-images.githubusercontent.com/55948480/80897452-b6539180-8d33-11ea-841f-f5cb2d800e09.gif)

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