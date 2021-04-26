#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#language: ja
フィーチャ: Hotel Planisphere 会員登録機能

    シナリオ: 会員登録ページを開く
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        もし  Windowを最大化する
        ならば "2"秒待つ

		シナリオアウトライン: ログインを行う
#				もし ナビゲータボタンをクリックする
#    		もし   リンクテキスト"会員登録"をクリックする
#        ならば "2"秒待つ
#登録操作
#        もし  "email"要素に<メルアド>と入力する
#        もし  "password"要素に<パスワード>と入力する
#        もし  "password-confirmation"要素に<繰り返し>と入力する
#        もし  "username"要素に<氏名>と入力する
#        もし  チェックボックス<ランク>をクリックする
#        もし  "address"要素に<住所>と入力する
#        もし  "tel"要素に<電話>と入力する
#        もし  ドロップダウン"gender"から<性別>を選択する
#        もし  年月日要素"birthday"に<生年月日>を入力する
#        もし  チェックボックス"notification"をクリックする
#        ならば  CSSセレクタ名が"button.btn.btn-primary.btn-block"のボタンをクリックする
#				もし ナビゲータボタンをクリックする
#        ならば  CSSセレクタ名が"button.btn.btn-outline-success.my-2.my-sm-0"のボタンをクリックする
#        ならば "1"秒待つ

#登録したアカウントでログイン
				もし ナビゲータボタンをクリックする
        もし  リンクテキスト"ログイン"をクリックする
#        ならば "2"秒待つ
        もし  "email"要素に<メルアド>と入力する
        もし  "password"要素に<パスワード>と入力する
        ならば  IDセレクタ名が"login-button"のボタンをクリックする
        ならば  画面に<メルアド>と表示されていること

#退会操作
				もし ナビゲータボタンをクリックする
#        もし  CSSセレクタ名が"button.btn.btn-danger.btn-block.my-3"のボタンをクリックしてポップアップ表示を出す
#        ならば  ポップアップ表示に"退会すると全ての情報が削除されます。"と表示される
#        ならば  ポップアップ表示に"退会処理を完了しました。ご利用ありがとうございました。"と表示される
				もし ログアウトする

        ならば "2"秒待つ

				例:
				|メルアド               |パスワード    |繰り返し      |氏名      |ランク        |住所                    |電話         |性別        |生年月日|
				|"ichiro@example.com" |"password"|"password"|"山田一郎"|"rank-premium"|"東京都豊島区池袋"          |"01234567891"|"男性"      |""|
				|"jun@example.com"|"pa55w0rd!"|"pa55w0rd!"|"林潤"|"rank-premium"|"大阪府大阪市北区梅田"|"01212341234"|"その他"      |"1988/12/17"|
				|"sakura@example.com"|"pass1234"|"pass1234"|"松本さくら"|"rank-normal" |"神奈川県横浜市鶴見区大黒ふ頭"|""|"女性"      |"2000/04/11"|
				|"yoshiki@example.com"|"pass-pass"|"pass-pass"|"木村良樹"|"rank-normal" |""|"01298765432"           |""      |"1992/08/31"|

	シナリオ: テスト終了
#終了処理
        もし シナリオを終了してブラウザを閉じる
