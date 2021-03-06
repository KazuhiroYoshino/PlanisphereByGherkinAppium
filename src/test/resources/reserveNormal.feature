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

フィーチャ: 予約ページ

	背景: 宿泊初日の曜日と連泊数によって、週末料金アップ適用が異なる。オプションは別料金。連泊数・宿泊人数・オプションでトータル料金が決まる。

#ここから一般会員の場合
	シナリオ: TC008 Normal user Nexus 10
				前提 デバイスを"Nexus_10_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC008_Nexus_10_API_29
		例:
		|宿泊プラン                |宿泊初日|連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"お得な特典付きプラン"    |"Friday"|"1"   |"1"     |"on" |"on"                    |"off"           |""|"電話でのご連絡"  |""|""|"144文字"|"スタンダードツイン"|"9000"  |"横向き"|
		|"テーマパーク優待プラン"  |"Monday"|"1"   |"1"     |"off"|"on"                    |"on"            |""|"電話でのご連絡"  |""|""|"off"    |"部屋指定なし"      |"12000" |"縦向き"|
		|"ディナー付きプラン"      |"Sunday"|"3"   |"4"     |"on" |"off"                   |"off"           |""|"メールでのご連絡"|""|""|"144文字"|"部屋指定なし"      |"122500"|"横向き"|
		|"エステ・マッサージプラン"|"Friday"|"1"   |"6"     |"off"|"on"                    |"off"           |""|"電話でのご連絡"  |""|""|"144文字"|"部屋指定なし"      |"60000" |"横向き"|

	シナリオ: ホーム画面にもどる
#				もし ナビゲータボタンをクリックする
#    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
#				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ



	シナリオ: TC009 Normal user Nexus 4
				前提 デバイスを"Nexus_4_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC009_Nexus_4_API_29
		例:
		|宿泊プラン          |宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"素泊まり"          |"Saturday" |"1"   |"1"     |"on" |"off"                   |"on"            |""|"電話でのご連絡"  |""|""|"off"    |"シングル"|"8875"  |"横向き"|
		|"出張ビジネスプラン"|"Wednesday"|"9"   |"2"     |"on" |"on"                    |"on"            |""|"電話でのご連絡"  |""|""|"144文字"|"シングル"|"164500"|"縦向き"|

	シナリオ: ホーム画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ


	シナリオ: TC010 Normal user Nexus 6
				前提 デバイスを"Nexus_6_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC010_Nexus_6_API_29
		例:
		|宿泊プラン          |宿泊初日  |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"カップル限定プラン"|"Thursday"|"2"   |"2"     |"on" |"on"                    |"on"            |""|"希望しない"      |""|""|"144文字"|"プレミアムツイン"|"40000" |"横向き"|
		|"素泊まり"          |"Monday"  |"9"   |"2"     |"on" |"on"                    |"on"            |""|"メールでのご連絡"|""|""|"144文字"|"シングル"        |"126500"|"横向き"|

	シナリオ: ホーム画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ


	シナリオ: TC011 Normal user Nexus 9
				前提 デバイスを"Nexus_9_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC011_Nexus_9_API_29
		例:
		|宿泊プラン              |宿泊初日  |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"お得な特典付きプラン"  |"Thursday"|"1"   |"1"     |"off"|"off"                   |"off"           |""|"電話でのご連絡"  |""|""|"144文字"|"スタンダードツイン"|"7000"  |"横向き"|
		|"ディナー付きプラン"    |"Friday"  |"1"   |"1"     |"off"|"on"                    |"on"            |""|"希望しない"      |""|""|"off"    |"部屋指定なし"      |"10500" |"縦向き"|
		|"カップル限定プラン"    |"Saturday"|"2"   |"2"     |"on" |"on"                    |"on"            |""|"希望しない"      |""|""|"144文字"|"プレミアムツイン"  |"48000" |"縦向き"|
		|"テーマパーク優待プラン"|"Tuesday" |"5"   |"9"     |"on" |"on"                    |"on"            |""|"希望しない"      |""|""|"off"    |"部屋指定なし"      |"535500"|"縦向き"|

	シナリオ: ホーム画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ


	シナリオ: TC012 Normal user Pixel 3 XL
				前提 デバイスを"Pixel_3_XL_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC012_Pixel_3_XL_API_29
		例:
		|宿泊プラン              |宿泊初日  |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"ディナー付きプラン"    |"Thursday"|"1"   |"4"     |"on" |"on"                    |"on"            |""|"希望しない"      |""|""|"off"    |"部屋指定なし"      |"46000" |"縦向き"|

	シナリオ: ホーム画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ


	シナリオ: TC013 Normal user Pixel 4 XL
				前提 デバイスを"Pixel_4_XL_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC013_Pixel_4_XL_API_29
		例:
		|宿泊プラン              |宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"お得なプラン"          |"Thursday" |"1"   |"1"     |"off"|"off"                   |"on"            |""|"電話でのご連絡"  |""|""|"144文字"|"部屋指定なし"      |"7000"  |"縦向き"|
		|"貸し切り露天風呂プラン"|"Tuesday"  |"1"   |"1"     |"on" |"on"                    |"off"           |""|"電話でのご連絡"  |""|""|"144文字"|"部屋指定なし"      |"11000" |"横向き"|
		|"カップル限定プラン"    |"Wednesday"|"2"   |"2"     |"off"|"off"                   |"off"           |""|"希望しない"      |""|""|"144文字"|"プレミアムツイン"  |"32000" |"横向き"|
		|"ディナー付きプラン"    |"Monday"   |"3"   |"4"     |"off"|"on"                    |"off"           |""|"希望しない"      |""|""|"off"    |"部屋指定なし"      |"106000"|"縦向き"|

	シナリオ: ホーム画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる
    		ならば "3"秒待つ


	シナリオ: TC014 Normal user Pixel C
				前提 デバイスを"Pixel_C_API_29"で選ぶ
	 			前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
    		前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
				もし ナビゲータボタンをクリックする
    		ならば "3"秒待つ
				もし  リンクテキスト"ログイン"をクリックする
				かつ  メールアドレスに"yoshiki@example.com"を入力して
				かつ  パスワードに"pass-pass"を入力して
    		もし  ログインボタンをクリックする
    		かつ メールアドレスと名前と電話番号を取得する
    		ならば "2"秒待つ
				もし ナビゲータボタンをクリックする
				もし	リンクテキスト"宿泊予約"をクリックする
    		ならば "3"秒待つ

	シナリオアウトライン: Normalユーザーの場合の宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ
				もし  宿泊プランを<宿泊プラン>にして
    		ならば "1"秒待つ

				ならば  親子タブを取得する
				ならば  子タブに切り替える

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				かつ  連絡手段を<連絡手段>にしたら電話番号を<電話番号>にするかメールアドレスを<メルアド>にするかして
				もし  連絡事項を<連絡事項>にして
				もし  予約内容を記録して
				ならば  合計金額は<合計金額>となり
				ならば  部屋タイプは<部屋タイプ>となり

				もし  予約内容を確認するボタンをクリックする
    		ならば "2"秒待つ

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり
				ならば  確認連絡の表示が<連絡手段>で<電話番号>か<メルアド>で正しく表示され
				ならば  連絡事項<連絡事項>が正しく

				もし    この内容で予約するボタンをクリックする
    		ならば "2"秒待つ

				ならば  ポップアップ表示に"予約を完了しました"と"ご来館、心よりお待ちしております。"が表示され
				もし    閉じるボタンをクリックする
				ならば  親タブに切り替える
#TC014_Pixel_C_API_29
		例:
		|宿泊プラン                |宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |連絡手段          |電話番号|メルアド|連絡事項 |部屋タイプ|合計金額|向き    |
		|"テーマパーク優待プラン"  |"Friday"   |"5"   |"1"     |"on" |"off"                   |"off"           |""|"希望しない"      |""|""|"144文字"|"部屋指定なし"      |"60000" |"横向き"|
		|"カップル限定プラン"      |"Sunday"   |"2"   |"2"     |"off"|"off"                   |"on"            |""|"電話でのご連絡"  |""|""|"144文字"|"プレミアムツイン"  |"38000" |"横向き"|
		|"素泊まり"                |"Friday"   |"1"   |"2"     |"on" |"on"                    |"off"           |""|"電話でのご連絡"  |""|""|"off"    |"シングル"          |"15000" |"横向き"|
		|"ディナー付きプラン"      |"Wednesday"|"1"   |"4"     |"off"|"on"                    |"on"            |""|"希望しない"      |""|""|"144文字"|"部屋指定なし"      |"42000" |"縦向き"|
		|"エステ・マッサージプラン"|"Tuesday"  |"1"   |"6"     |"on" |"off"                   |"on"            |""|"希望しない"      |""|""|"off"    |"部屋指定なし"      |"66000" |"横向き"|
		|"お得なプラン"            |"Saturday" |"9"   |"9"     |"off"|"off"                   |"off"           |""|"電話でのご連絡"  |""|""|"off"    |"部屋指定なし"      |"540000"|"縦向き"|
		|"お得な特典付きプラン"    |"Sunday"   |"9"   |"9"     |"off"|"on"                    |"on"            |""|"メールでのご連絡"|""|""|"off"    |"スタンダードツイン"|"632250"|"縦向き"|

	シナリオ: ホーム画面にもどる
#				もし ナビゲータボタンをクリックする
#    		ならば "1"秒待つ
	  		もし  HOME画面にもどる
				もし ナビゲータボタンをクリックする
    		ならば "1"秒待つ
	  		もし ログアウトする
    		ならば "1"秒待つ
    		もし シナリオを終了してブラウザを閉じる