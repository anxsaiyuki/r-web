# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create( product_name: "騎士王 アルフレッド", product_number: "BT01/001", description: "【永】【(V)】：あなたのユニットはこのユニットを【ブースト】できない。【永】【(V)】：あなたのターン中、あなたの《ロイヤルパラディン》のリアガード1枚につき、このユニットのパワー+2000。【起】【(V)/(R)】：［CB(3)］あなたの山札からグレード2以下の《ロイヤルパラディン》を1枚まで探し、(R)にコールし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ブラスター・ブレード", product_number: "BT01/002", description: "【自】：［CB(2)］このユニットが(V)に登場した時、コストを払ってよい。払ったら、相手のリアガードを1枚選び、退却させる。【自】：［CB(2)］このユニットが(R)に登場した時、あなたの《ロイヤルパラディン》のヴァンガードがいるなら、コストを払ってよい。払ったら、相手のグレード2以上のリアガードを1枚選び、退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ばーくがる", product_number: "BT01/003", description: "【自】：他の《ロイヤルパラディン》がこのユニットにライドした時、このカードを(R)にコールしてよい。【起】【(R)】：［このユニットをレストする］あなたの山札から、「未来の騎士 リュー」か「ふろうがる」を1枚まで探し、(R)にコールし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴニック・オーバーロード", product_number: "BT01/004", description: "【永】【(V)/(R)】：他のあなたの《かげろう》の、ヴァンガードかリアガードがいないなら、このユニットのパワー-2000。【起】【(V)/(R)】：［CB(3)］そのターン中、このユニットのパワー+5000し、『【自】【(V)/(R)】：このユニットのアタックが相手のリアガードにヒットした時、このユニットを【スタンド】する。』を得て、『【ツインドライブ!!】』を失う。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "勝利の化身 アリフ", product_number: "BT01/005", description: "【起】【(V)/(R)】：［CB(4)］そのターン中、このユニットのパワー+3000／クリティカル+1。【起】【(V)】：［あなたのソウルから、「ドラゴンナイト アリフ」と「鎧の化身 バー」と「槍の化身 ター」を1枚ずつ選び、ドロップゾーンに置く］あなたのダメージゾーンをすべて表にする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "CEO アマテラス", product_number: "BT01/006", description: "【永】【(V)】：あなたのターン中、あなたの手札が4枚以上なら、このユニットのパワー+4000。【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、あなたの山札の上から1枚見て、山札の上か下に置く。【自】【(V)/(R)】：［CB(5)，SB(8)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、5枚まで引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルシスター ここあ", product_number: "BT01/007", description: "【自】：このユニットが(V)か(R)に登場した時、あなたの《オラクルシンクタンク》のヴァンガードがいるなら、あなたの山札の上から1枚見て、山札の上か下に置く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "アシュラ・カイザー", product_number: "BT01/008", description: "【永】【(V)/(R)】：他のあなたの《ノヴァグラップラー》の、ヴァンガードかリアガードがいないなら、このユニットのパワー-2000。【自】【(V)】：このユニットのドライブチェックでグレード3の《ノヴァグラップラー》がでた時、あなたのリアガードを1枚選び、【スタンド】する。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "斬魔の騎士 ローエングリン", product_number: "BT01/009", description: "【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、そのターン中、このユニットのパワー+2000。【自】【(V)/(R)】：［SB(8)，CB(5)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、相手のリアガードをすべて退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "孤高の騎士 ガンスロッド", product_number: "BT01/010", description: "【起】【(V)】：［CB(2)］あなたのソウルに「ブラスター・ブレード」があるなら、そのターン中、このユニットのパワー+5000/クリティカル+1。【起】【手札】：［このカードを相手に見せ、山札の上に置く］あなたの山札から「ブラスター・ブレード」を1枚まで探し、相手に見せ、手札に加え、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "閃光の盾 イゾルデ", product_number: "BT01/011", description: "【永】：守護者【自】：［あなたの手札から《ロイヤルパラディン》を1枚選び、捨てる］このユニットが(G)に登場した時、コストを払ってよい。払ったら、あなたのアタックされている《ロイヤルパラディン》を1枚選び、そのバトル中、そのユニットは、ヒットされない。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "未来の騎士 リュー", product_number: "BT01/012", description: "【起】【(R)】：［CB(1)，あなたの(R)から、「未来の騎士 リュー」と「ばーくがる」と「ふろうがる」を1枚ずつ選び、ソウルに置く］あなたのグレード1のヴァンガードがいるなら、あなたの山札から「ブラスター・ブレード」を1枚まで探し、ライドし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ボーテックス・ドラゴン", product_number: "BT01/013", description: "【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、そのターン中、このユニットのパワー+2000。【起】【(V)/(R)】：［SB(8)，CB(5)］相手のリアガードを3枚まで選び、退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴンナイト アリフ", product_number: "BT01/014", description: "【起】【(V)】：［CB(1)，あなたの(R)から「鎧の化身 バー」と「槍の化身 ター」を1枚ずつ選び、ソウルに置く］あなたの山札から「勝利の化身 アリフ」を1枚まで探し、ライドし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ワイバーンガード バリィ", product_number: "BT01/015", description: "【永】：守護者【自】：［あなたの手札から《かげろう》を1枚選び、捨てる］このユニットが(G)に登場した時、コストを払ってよい。払ったら、あなたのアタックされている《かげろう》を1枚選び、そのバトル中、そのユニットは、ヒットされない。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "リザードソルジャー コンロー", product_number: "BT01/016", description: "【自】：他の《かげろう》がこのユニットにライドした時、このカードを(R)にコールしてよい。【起】【(R)】：［CB(1)，このユニットを退却させる］あなたの山札からグレード1以下の《かげろう》を1枚まで探し、相手に見せ、手札に加え、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "メイデン・オブ・ライブラ", product_number: "BT01/017", description: "【自】【(V)/(R)】：［CB(2)］このユニットのアタックがヒットした時、あなたの《オラクルシンクタンク》のヴァンガードがいるなら、コストを払ってよい。払ったら、1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルシスター もか", product_number: "BT01/018", description: "【自】【(V)/(R)】：このユニットがアタックした時、あなたの手札が4枚以上なら、そのバトル中、このユニットのパワー+3000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルシスター しょこら", product_number: "BT01/019", description: "【永】：守護者【自】：［あなたの手札から《オラクルシンクタンク》を1枚選び、捨てる］このユニットが(G)に登場した時、コストを払ってよい。払ったら、あなたのアタックされている《オラクルシンクタンク》を1枚選び、そのバトル中、そのユニットは、ヒットされない。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ジャガーノート・マキシマム", product_number: "BT01/020", description: "【永】【(V)/(R)】：他のあなたの《スパイクブラザーズ》のヴァンガードかリアガードがいないなら、このユニットのパワー-2000。【自】【(R)】：［SB(1)］このユニットがアタックした時、コストを払ってよい。払ったら、そのバトル中、このユニットのパワー+5000し、そのバトルのクローズステップ開始時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "沈黙の騎士 ギャラティン", product_number: "BT01/021", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴンナイト ネハーレン" product_number: "BT01/022", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ワイバーンストライク テージャス" product_number: "BT01/023", description: "【永】【(V)/(R)】：このユニットは、このユニットと同じ縦列の後列にいる相手のユニットをバトル相手のユニットに選べる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "槍の化身 ター", product_number: "BT01/024", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "オラクルガーディアン アポロン" product_number: "BT01/025", description: "【自】【(V)】：［CB(2)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、2枚引き、あなたの手札から1枚選び、山札に戻し、その山札をシャッフルする。【自】【(R)】：［CB(2)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "オラクルガーディアン ワイズマン", product_number: "BT01/026", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ロゼンジ・メイガス" product_number: "BT01/027", description: "【自】：他の《オラクルシンクタンク》がこのユニットにライドした時、このカードを(R)にコールしてよい。【自】【(R)】：このユニットが【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+3000し、そのターンの終了時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "Mr.インビンシブル", product_number: "BT01/028", description: "【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、あなたのダメージゾーンから1枚選び、表にする。【自】【(V)/(R)】：［SB(8)，CB(5)］このユニットのアタックがヒットした時、コストを払ってよい、払ったら、あなたのユニットをすべて【スタンド】する。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ジェノサイド・ジャック", product_number: "BT01/029", description: "【永】【(V)/(R)】：拘束【起】【(V)/(R)】：［CB(1)］そのターン中、このユニットは『拘束』を失う。【自】【(V)】：このユニットが《ノヴァグラップラー》に【ブースト】された時、そのバトル中、このユニットのパワー+5000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "キング・オブ・ソード", product_number: "BT01/030", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "クイーン・オブ・ハート" product_number: "BT01/031", description: "【自】【(R)】：このユニットが「キング・オブ・ソード」をブーストした時、そのバトル中、ブーストされたユニットのパワー+4000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルライザー", product_number: "BT01/032", description: "【自】：他の《ノヴァグラップラー》がこのユニットにライドした時、このカードを(R)にコールしてよい。【自】【(R)】：このユニットが【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+3000し、そのターンの終了時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "暴君 デスレックス", product_number: "BT01/033", description: "【自】【(V)】：このユニットがアタックした時、そのバトル中、このユニットのパワー+5000。【自】【(V)】：このユニットのアタックがヒットした時、あなたのリアガードを1枚選び、退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "突撃竜 ブライトプス", product_number: "BT01/034", description: "【自】：［CB(1)］このユニットが(R)からドロップゾーンに置かれた時、コストを払ってよい。払ったら、あなたの山札から「鉄壁竜 シールドン」を1枚まで探し、相手に見せ、手札に加え、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "忍竜 ボイドマスター", product_number: "BT01/035", description: "【自】【(V)】：このユニットがアタックした時、あなたの手札が相手の手札より多いなら、そのバトル中、このユニットのパワー+3000。【自】【(V)/(R)】：［CB(1)］このユニットのアタックがヒットした時、あなたの手札が相手の手札より少ないなら、コストを払ってよい。払ったら、相手は自分の手札から1枚選び、捨てる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "デーモンイーター", product_number: "BT01/036", description: "【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、そのターン中、このユニットのパワー+2000。【自】【(V)/(R)】：［SB(8)，CB(5)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、相手のリアガードをすべて退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "モンスター・フランク", product_number: "BT01/037", description: "【起】【ドロップゾーン】：［CB(3)］あなたのグレード2のヴァンガードがいるなら、このカードをライドする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "大幹部 ブルーブラッド", product_number: "BT01/038", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ヘル・スパイダー" product_number: "BT01/039", description: "【永】【(V)】：あなたのターン中、相手の、ヴァンガードとリアガードがすべてレストしているなら、このユニットのパワー+3000。【自】：［CB(2)］このユニットが(V)か(R)に登場した時、コストを払ってよい。払ったら、相手のリアガードを1枚選び、そのユニットは、次の相手のスタンドフェイズ中、スタンドできない。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ブラッディ・ヘラクレス", product_number: "BT01/040", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "盟約の騎士 ランドルフ" product_number: "BT01/041", description: "【自】【(V)/(R)】：このユニットがアタックした時、あなたの手札が相手の手札より多いなら、そのバトル中、このユニットのパワー+3000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "小さな賢者 マロン", product_number: "BT01/042", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "湖の巫女 リアン" product_number: "BT01/043", description: "【起】【(V)/(R)】：［このユニットをレストする，あなたの手札から1枚選び、捨てる］1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ういんがる", product_number: "BT01/044", description: "【自】【(R)】：このユニットが「ブラスター・ブレード」を【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+4000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "武器商人 ゴヴァノン", product_number: "BT01/045", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ふろうがる" product_number: "BT01/046", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "世界樹の巫女 エレイン" product_number: "BT01/047", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "鎧の化身 バー" product_number: "BT01/048", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴンモンク ゴジョー" product_number: "BT01/049", description: "【起】【(V)/(R)】：［このユニットを【レスト】する，あなたの手札から1枚選び、捨てる］1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ワイバーンストライク ジャラン", product_number: "BT01/050", description: "【自】【(R)】：このユニットが「ワイバーンストライク　テージャス」を【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+4000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴンダンサー モニカ", product_number: "BT01/051", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "リザードソルジャー ガンルー" product_number: "BT01/052", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴンモンク ゲンジョウ" product_number: "BT01/053", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "オラクルガーディアン ジェミニ" product_number: "BT01/054", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "お天気お姉さん みるく" product_number: "BT01/055", description: "【自】【(R)】：このユニットが《オラクルシンクタンク》のヴァンガードをブーストした時、あなたの手札が4枚以上なら、そのバトル中、ブーストされたユニットのパワー+4000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "オラクルガーディアン ニケ", product_number: "BT01/056", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドリーム・イーター" product_number: "BT01/057", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ミラクル・キッド" product_number: "BT01/058", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ハングリー・ダンプティ" product_number: "BT01/059", description: "【自】：このユニットが(R)に登場した時、あなたの《ノヴァグラップラー》のヴァンガードがいるなら、あなたのダメージゾーンから1枚選び、表にする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "タフ・ボーイ", product_number: "BT01/060", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "叫んで踊れる実況 シャウト" product_number: "BT01/061", description: "【起】【(V)/(R)】：［このユニットを【レスト】する，あなたの手札から1枚選び、捨てる］1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドグー・メカニック", product_number: "BT01/062", description: "【自】：このユニットが(R)に登場した時、あなたの《ノヴァグラップラー》のヴァンガードがいるなら、あなたのダメージゾーンから1枚選び、表にする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "シャイニング・レディ", product_number: "BT01/063", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ラッキー・ガール" product_number: "BT01/064", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ラウンドガール クララ" product_number: "BT01/065", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ソニックノア" product_number: "BT01/066", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "鉄壁竜 シールドン" product_number: "BT01/067", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "忍獣 チガスミ" product_number: "BT01/068", description: "【自】【(V)/(R)】：このユニットがアタックした時、あなたの手札が相手の手札より多いなら、そのバトル中、このユニットのパワー+3000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "忍竜 ドレッドマスター", product_number: "BT01/069", description: "【自】【(R)】：［CB(1)］このユニットが《ぬばたま》をブーストしたバトル中、アタックがヒットした時、あなたの手札が相手の手札より少ないなら、コストを払ってよい。払ったら、相手は自分の手札から1枚選び、捨てる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "忍獣 ハガクレ", product_number: "BT01/070", description: "【自】：［CB(1)］このユニットが(G)に登場した時、あなたの《ぬばたま》のヴァンガードがいて、あなたの手札が相手の手札より少ないなら、コストを払ってよい。払ったら、相手は自分の手札から1枚選び、捨てる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ブルー・ダスト", product_number: "BT01/071", description: "【自】【(V)/(R)】：このユニットのアタックがヒットした時、あなたの《ダークイレギュラーズ》のヴァンガードがいるなら、SC(1)してよい。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ナイトメア・ベイビー", product_number: "BT01/072", description: "【自】：このユニットが「ブルー・ダスト」をブーストした時、そのバトル中、ブーストされたユニットのパワー+4000。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ロック・ザ・ウォール", product_number: "BT01/073", description: "【自】：このユニットが(G)からドロップゾーンに置かれた時、このカードをソウルに置く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ハイスピード・ブラッキー", product_number: "BT01/074", description: "【自】【(R)】：［SB(1)］このユニットがアタックした時、コストを払ってよい。払ったら、そのバトル中、このユニットのパワー+5000し、そのバトルのクローズステップ開始時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ワンダー・ボーイ", product_number: "BT01/075", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "レッドシュー・ミリィ" product_number: "BT01/076", description: "【自】：このユニットが(G)からドロップゾーンに置かれた時、このカードをソウルに置く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "伊達男 ロマリオ", product_number: "BT01/077", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "案内するゾンビ" product_number: "BT01/078", description: "【自】【(V)】：他の《グランブルー》がこのユニットにライドした時、このカードを(R)にコールしてよい。【起】【(R)】：［このユニットをソウルに置く］あなたの山札の上から3枚をドロップゾーンに置く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "カルマ・クイーン", product_number: "BT01/079", description: "【自】：［CB(2)］このユニットが(V)か(R)に登場した時、コストを払ってよい。払ったら、相手のリアガードを1枚選び、そのユニットは、次の相手のスタンドフェイズ中、スタンドできない。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "マダム・ミラージュ", product_number: "BT01/080", description: "-", pack_number = 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "騎士王 アルフレッド" product_number: "BT01/S01", description: "【永】【(V)】：あなたのユニットはこのユニットを【ブースト】できない。【永】【(V)】：あなたのターン中、あなたの《ロイヤルパラディン》のリアガード1枚につき、このユニットのパワー+2000。【起】【(V)/(R)】：［CB(3)］あなたの山札からグレード2以下の《ロイヤルパラディン》を1枚まで探し、(R)にコールし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ブラスター・ブレード", product_number: "BT01/S02", description: "【自】：［CB(2)］このユニットが(V)に登場した時、コストを払ってよい。払ったら、相手のリアガードを1枚選び、退却させる。【自】：［CB(2)］このユニットが(R)に登場した時、あなたの《ロイヤルパラディン》のヴァンガードがいるなら、コストを払ってよい。払ったら、相手のグレード2以上のリアガードを1枚選び、退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ばーくがる", product_number: "BT01/S03", description: "【自】：他の《ロイヤルパラディン》がこのユニットにライドした時、このカードを(R)にコールしてよい。【起】【(R)】：［このユニットをレストする］あなたの山札から、「未来の騎士 リュー」か「ふろうがる」を1枚まで探し、(R)にコールし、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ドラゴニック・オーバーロード", product_number: "BT01/S04", description: "【永】【(V)/(R)】：他のあなたの《かげろう》の、ヴァンガードかリアガードがいないなら、このユニットのパワー-2000。【起】【(V)/(R)】：［CB(3)］そのターン中、このユニットのパワー+5000し、『【自】【(V)/(R)】：このユニットのアタックが相手のリアガードにヒットした時、このユニットを【スタンド】する。』を得て、『【ツインドライブ!!】』を失う。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "CEO アマテラス", product_number: "BT01/S05", description: "【永】【(V)】：あなたのターン中、あなたの手札が4枚以上なら、このユニットのパワー+4000。【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、あなたの山札の上から1枚見て、山札の上か下に置く。【自】【(V)/(R)】：［CB(5)，SB(8)］このユニットのアタックがヒットした時、コストを払ってよい。払ったら、5枚まで引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルシスター ここあ", product_number: "BT01/S06", description: "【自】：このユニットが(V)か(R)に登場した時、あなたの《オラクルシンクタンク》のヴァンガードがいるなら、あなたの山札の上から1枚見て、山札の上か下に置く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "アシュラ・カイザー", product_number: "BT01/S07", description: "【永】【(V)/(R)】：他のあなたの《ノヴァグラップラー》の、ヴァンガードかリアガードがいないなら、このユニットのパワー-2000。【自】【(V)】：このユニットのドライブチェックでグレード3の《ノヴァグラップラー》がでた時、あなたのリアガードを1枚選び、【スタンド】する。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "孤高の騎士 ガンスロッド", product_number: "BT01/S08", description: "【起】【(V)】：［CB(2)］あなたのソウルに「ブラスター・ブレード」があるなら、そのターン中、このユニットのパワー+5000/クリティカル+1。【起】【手札】：［このカードを相手に見せ、山札の上に置く］あなたの山札から「ブラスター・ブレード」を1枚まで探し、相手に見せ、手札に加え、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ボーテックス・ドラゴン", product_number: "BT01/S09", description: "【自】【(V)】：あなたのメインフェイズ開始時、SC(1)し、そのターン中、このユニットのパワー+2000。【起】【(V)/(R)】：［SB(8)，CB(5)］相手のリアガードを3枚まで選び、退却させる。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "メイデン・オブ・ライブラ", product_number: "BT01/S10", description: "【自】【(V)/(R)】：［CB(2)］このユニットのアタックがヒットした時、あなたの《オラクルシンクタンク》のヴァンガードがいるなら、コストを払ってよい。払ったら、1枚引く。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "ロゼンジ・メイガス", product_number: "BT01/S11", description: "【自】：他の《オラクルシンクタンク》がこのユニットにライドした時、このカードを(R)にコールしてよい。【自】【(R)】：このユニットが【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+3000し、そのターンの終了時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
Product.create( product_name: "バトルライザー", product_number: "BT01/S12", description: "【自】：他の《ノヴァグラップラー》がこのユニットにライドした時、このカードを(R)にコールしてよい。【自】【(R)】：このユニットが【ブースト】した時、そのバトル中、【ブースト】されたユニットのパワー+3000し、そのターンの終了時、このユニットを山札に戻し、その山札をシャッフルする。", pack_number: 1, quantity: 1, price: 500, category: "vanguard")
