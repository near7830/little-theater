# アプリケーション名
little-theater

# アプリケーション概要
演劇に関するスケジュールの共有が出来る。

# URL
https://little-theater.herokuapp.com/

# テスト用アカウント
・Basic認証パスワード：37760  
・Basic認証ID：horai  
・メールアドレス：test@mail.com  
・パスワード：a12345

# 利用方法
## スケジュール投稿
1.サインアップ画面でユーザーを新規登録する  
2.公演作成ボタンから公演の名前とスケジュールを共有するユーザーを選ぶ  
3.イベント追加ボタンから日の選択とスケジュールの内容を記述して投稿する

# アプリケーションを作成した背景
演劇に関するスケジュールの共有が上手くいっていないことをよく見てきたので、専用のアプリとして作り他のスケジュールとは別のものとしてあれば、共有がしやすく管理しやすいものになると考えたからです。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1zFMsymJH552brk4Sn39tjtuDqku8k2n-f73rZmxozoA/edit?usp=sharing
# 実装した機能についての画像
[![Image from Gyazo](https://i.gyazo.com/c4c1d11861474bac97bd817c664d30cd.png)](https://gyazo.com/c4c1d11861474bac97bd817c664d30cd)


# 実装予定の機能
・現状１対１のユーザーから複数人が共有出来る機能  
・投稿したスケジュールの詳細、編集機能
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/51bec80dfa3cebd45c406fd3192161c8.png)](https://gyazo.com/51bec80dfa3cebd45c406fd3192161c8)
# 画面遷移図

# 環境開発
バックエンド
# ローカルでの動作方法
# 工夫したポイント
作成した公演チャット毎にカレンダーを別で表示することです。  
一番重要な部分なのでテーブル毎に別々のカレンダーを日本語表記で表示させ、追加されたイベントもテーブル毎に別々で表示されるようにしました。