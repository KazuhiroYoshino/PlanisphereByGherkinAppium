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

#    シナリオ: 会員登録ページを開く
#        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
#        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
#        もし  Windowを最大化する
#        ならば "2"秒待つ

		シナリオアウトライン: ログインを行う
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
#        もし  Windowを最大化する
        ならば "2"秒待つ
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
        かつ  メールアドレスに<メルアド>を入力して
        かつ  パスワードに<パスワード>を入力して
        もし  ログインボタンをクリックする
        ならば "2"秒待つ

				ならば  氏名が<氏名>と表示されること
				ならば  会員ランクが<ランク>と表示されること
				ならば  住所が<住所>と表示されること
				ならば  電話番号が<電話>と表示されること
				ならば  性別が<性別>と表示されること
				ならば  生年月日が<生年月日>と表示されること
				ならば  お知らせが<お知らせ>と表示されること

#退会操作
				もし ナビゲータボタンをクリックする
#        もし  CSSセレクタ名が"button.btn.btn-danger.btn-block.my-3"のボタンをクリックしてポップアップ表示を出す
#        ならば  ポップアップ表示に"退会すると全ての情報が削除されます。"と表示される
#        ならば  ポップアップ表示に"退会処理を完了しました。ご利用ありがとうございました。"と表示される
				もし ログアウトする

        もし シナリオを終了してブラウザを閉じる
        ならば "2"秒待つ

				例:
				|メルアド             |パスワード |繰り返し   |氏名        |ランク          |住所                          |電話         |性別    |生年月日    |お知らせ      |
				|"ichiro@example.com" |"password" |"password" |"山田一郎"  |"プレミアム会員"|"東京都豊島区池袋"            |"01234567891"|"男性"  |""          |"受け取る"    |
				|"jun@example.com"    |"pa55w0rd!"|"pa55w0rd!"|"林潤"      |"プレミアム会員"|"大阪府大阪市北区梅田"        |"01212341234"|"その他"|"1988年12月17日"|"受け取らない"|
				|"sakura@example.com" |"pass1234" |"pass1234" |"松本さくら"|"一般会員"      |"神奈川県横浜市鶴見区大黒ふ頭"|""           |"女性"  |"2000年4月1日"|"受け取らない"|
				|"yoshiki@example.com"|"pass-pass"|"pass-pass"|"木村良樹"  |"一般会員"      |""                            |"01298765432"|""      |"1992年8月31日"|"受け取る"    |

#	シナリオ: テスト終了
#終了処理
#        もし シナリオを終了してブラウザを閉じる
