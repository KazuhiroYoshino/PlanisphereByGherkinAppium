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
フィーチャ: デバイス回転機能
	シナリオ: Nexus_4 起動
				前提 デバイスを"Nexus_4_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


	シナリオ: Nexus_10 起動
				前提 デバイスを"Nexus_10_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


 	シナリオ: Nexus_6 起動
				前提 デバイスを"Nexus_6_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


 	シナリオ: Nexus_9 起動
				前提 デバイスを"Nexus_9_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


 	シナリオ: Pixel_3_XL 起動
				前提 デバイスを"Pixel_3_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


  	シナリオ: Pixel_4_XL 起動
				前提 デバイスを"Pixel_4_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる


  	シナリオ: Pixel_C 起動
				前提 デバイスを"Pixel_C_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"https://hotel.testplanisphere.dev/ja/index.html"を表示する
        ならば "2"秒待つ

  シナリオ: デバイス横向き
  			もし デバイスを"横向き"にする
        ならば "10"秒待つ
  シナリオ: デバイス縦向き
  			もし デバイスを"縦向き"にする
        ならば "10"秒待つ

  シナリオ: テスト終了
        もし シナリオを終了してブラウザを閉じる
