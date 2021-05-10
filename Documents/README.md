# PlanisphereByGherkinAppium
### Appiumを用いたe2eテスト
### Android Studioから準備可能な携帯電話　Pixel 3 XL、Pixel 4 XL、Nexus 4、Nexus 6 とタブレット Pixel 9、Nexus 10、Pixel Cを利用
### ユーザー権限（Guest / Normal member / Premium member）と使用するデバイスでグループ化したテストケースとし、エミュレータによるテストでも、より実使用条件に近いシナリオテストとする
### テストケース単位で起動済の仮想デバイスをAppiumで切替えて、時々、デバイスの縦横の向きを変えて、よりユーザーの指向に合ったテストにしたい
### テストケース生成は、ユーザー権限 / 宿泊プラン（部屋タイプに効く） / 宿泊初日（曜日によって料金に影響があるため） / オプション（合計料金に影響がある） / 連絡手段　の組み合わせ網羅とし、生成にはPictmasterを用いてALL Pairとする
### Gherkin記法のシナリオアウトラインは、Pictmasterから生成したテストケースを自動整形し、自動テストシナリオの自動生成を試みる
