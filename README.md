# アプリケーション名

らんぱち HP

# アプリケーション概要

選手の追加や編集、削除、試合の問い合わせが出来ます。

# URL

https://ranpach-hp.onrender.com

# Basic 認証

- ID: redwing
- password: ranpach

# 利用方法

## 選手の追加,編集,削除

1\. 選手紹介ページに移動する  
2\. 追加ボタンを押して選手登録を行う  
3\. 詳細ページから編集、削除を行う  
＊上記の操作を行う際 Basic 認証を行う

# アプリケーションを作成した背景

私が所属している野球チームのホームページが無かったのでプログラミングを学んだら作成しようと  
考えておりました。また作成に伴い様々なチームが試合を申し込みたいと思えるようなホームページを  
作りたいと思い作成しました。

# 実装予定の機能

- カレンダー機能を使用した日程管理,閲覧

# 開発環境

- javascript
- Ruby
- Ruby on rails
- mySQL

# 工夫した点

実際にどのような機能が欲しいか使用するチームメンバーにヒヤリングを行い、  
実装にあたりました。チームメンバーでない人が選手登録や編集が行われると困るので  
ユーザー管理の認証ではなく Basic 認証を使用してチーム内のパスワードを知っている人だけが  
登録が出来るようにしました。
