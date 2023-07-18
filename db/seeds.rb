# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Admin.create!(
   email: 'test@hoge.com',
   password: 'testhoge',
)

tags = Tag.create([
   { name: 'サラダ'},
   { name: 'ごはんもの'},
   { name: 'グラタン・ドリア'},
   { name: '麺類'},
   { name: '漬物・佃煮'},
   { name: '卵料理'},
   { name: '定番おかず'},
   { name: 'おつまみ・小鉢'},
   { name: '揚げ物'},
   { name: '汁物・スープ'},
   { name: '炒め物'},
   { name: '煮物'},
   { name: '燻製'},
   { name: '粉もの'},
   { name: '肉料理'},
   { name: 'お菓子・デザート'},
   { name: 'タレ・ドレッシング'},
   { name: '豆腐・大豆加工品'},
   { name: '野菜料理'},
   { name: '鍋もの'},
   { name: 'パン'},
   { name: '飲み物'},
   { name: '魚介料理'},
   ])

customers = Customer.create!(
  [
    {last_name: '山田', first_name: '太郎', email: 'aaa@au.com', password: 'password'},
    {last_name: '田中', first_name: '一郎', email: 'bbb@au.com', password: 'password'},
    {last_name: '令和', first_name: '花子', email: 'ccc@au.com', password: 'password'},
    {last_name: '平成', first_name: '莉子', email: 'ddd@au.com', password: 'password'},
    {last_name: '深澤', first_name: '翔太', email: 'eee@au.com', password: 'password'},
    {last_name: '岩本', first_name: '大介', email: 'fff@au.com', password: 'password'},
    {last_name: '目黒', first_name: '亮平', email: 'ggg@au.com', password: 'password'},
    {last_name: '向井', first_name: '辰哉', email: 'hhh@au.com', password: 'password'},
    {last_name: '阿部', first_name: '康二', email: 'iii@au.com', password: 'password'},
    {last_name: '宮舘', first_name: '由紀', email: 'jjj@au.com', password: 'password'},
    {last_name: '渡辺', first_name: '眞帆', email: 'kkk@au.com', password: 'password'},
    {last_name: '平野', first_name: '汐里', email: 'lll@au.com', password: 'password'}
  ]
)

Recipe.create!( [
   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/オムライス.jpg"), filename:"オムライス.jpg"),
    name: 'オムライス',
    time: '20分',
    tag_ids: [tags[1].id],
    material: %Q{ごはん：４００g\n
                 玉ねぎ：１/２個\n
                 ピーマン：１個\n
                 ソーセージ：２本\n
                 有塩バター：１０g\n
                 ケチャップ：大さじ２\n
                 卵 (Mサイズ)：４個\n
                 (A)牛乳：大さじ２\n
                 (A)塩こしょう：少々\n
                 サラダ油：大さじ２\n
                 ケチャップ：大さじ２},
    make: %Q{１  玉ねぎ、ピーマンはみじん切りにします。ソーセージは小口切りにします。\n
             ２  中火で熱したフライパンに有塩バターを溶かし、１を加えて炒めます。\n
             ３  ケチャップライスを作ります。 玉ねぎがしんなりしたらごはんを入れて中火で炒め、ケチャップを加えて炒め合わせ、全体に味がなじんだら火から下ろします。\n
             ４  ボウルに卵、(A)を入れて、フォークで卵をときほぐしながら混ぜます。\n
             ５  中火で熱したフライパンにサラダ油をひき、４を入れて手早く混ぜ、半熟状になったら火から下ろします。\n
             ６  器に３、５を盛り付け、ケチャップをかけて完成です。},
    customer_id: customers[0].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ラーメン.jpg"), filename:"ラーメン.jpg"),
    name: '醤油ラーメン',
    time: '15分',
    tag_ids: [tags[3].id],
    material: %Q{中華麺 (生)：２玉\n
                 お湯 (ゆで用)：適量\n
                 熱湯：１０００ml\n(A)しょうゆ：大さじ２\n
                 (A)鶏ガラスープの素：小さじ１\n
                 (A)顆粒和風だし：小さじ１\n
                 (A)すりおろし生姜：小さじ１\n
                 (A)粗挽き黒こしょう小さじ１},
    make: %Q{１  長ねぎは小口切りにします。\n
             ２  お湯を沸騰させた鍋に中華麺を入れ、パッケージの表記通りゆでたらザルにあげ水気を切ります。\n
             ３  器に(A)、熱湯を入れてよく混ぜ合わせます。\n
             ４  ２を入れ、１、残りのトッピングの材料を盛り付けたら完成です。},
    customer_id: customers[1].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ラーメン.jpg"), filename:"牛丼.jpg"),
    name: '牛丼',
    time: '15分',
    tag_ids: [tags[1].id],
    material: %Q{ごはん：４００g\n
                 牛バラ肉 (切り落とし)：３００g\n
                 玉ねぎ：５０g\n
                 水：２００ml\n
                 めんつゆ (２倍濃縮)：１００ml\n
                 すりおろし生姜：小さじ２\n
                 紅生姜：２０g},
    make: %Q{１玉ねぎは薄切りにします。\n
             ２鍋に調味液の材料を入れて混ぜ合わせ、中火にかけます。\n
             ３沸騰したら1、牛バラ肉を入れて中火のまま煮ます。\n
             ４汁気が１/３量ほどになり、牛バラ肉に火が通ったら火から下ろします。\n
             ５器にごはんをよそい、４を汁ごと全体にのせ、紅生姜を添えて完成です。},
    customer_id: customers[2].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ハンバーグ.jpg"), filename:"ハンバーグ.jpg"),
    name: 'ハンバーグ',
    time: '30分',
    tag_ids: [tags[14].id],
    material: %Q{牛豚合びき肉：３００g\n
                 玉ねぎ：１００g\n
                 (A)牛乳：大さじ１\n
                 (A)パン粉：大さじ１\n
                 (A)塩こしょう：小さじ１/２\n
                 (A)ナツメグ：小さじ１/２\n
                 卵 (Mサイズ)：１個\n
                 料理酒：大さじ２\n
                 サラダ油：大さじ１\n
                 ケチャップ：大さじ２\n
                 中濃ソース：大さじ１\n
                 砂糖：小さじ１},
    make: %Q{１  玉ねぎをみじん切りにします。\n
             ２  ボウルに牛豚合びき肉、１、(A)、卵を入れ粘り気がでるまでよくこね、２等分にし小判型に成形し真ん中をくぼませます。\n
             ３  中火に熱したフライパンにサラダ油をひき、２を入れ３分程焼きます。\n
             ４  焼き色がついたら裏返して両面焼き色が付いたら料理酒を入れ蓋をします。５分程蒸し焼きにし、中まで火が通ったら取り出します。\n
             ５  同じフライパンにソースの材料を入れ弱火で加熱し、全体が温まったら火から下ろします。\n
             ６  器に付け合わせの材料、４を盛り付け、５をかけて完成です。},
    customer_id: customers[3].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/アヒージョ.jpg"), filename:"アヒージョ.jpg"),
    name: 'アヒージョ',
    time: '25分',
    tag_ids: [tags[7].id],
    material: %Q{ブラウンマッシュルーム：７個\n
                 エビ (冷凍)：７０g\n
                 ニンニク：１片\n
                 アンチョビソース：小さじ１\n
                 鷹の爪輪切り：小さじ１/２\n
                 オリーブオイル：８０ml\n
                 塩こしょう：少々},
    make: %Q{１  ブラウンマッシュルームは４等分に切ります。\n
             ２  ニンニクは薄切りにします。\n
             ３  スキレットにオリーブオイルと鷹の爪輪切り、２を入れて、中火で香りが出るまで加熱します。\n
             ４  ３にエビと１を入れて、火が通るまで中火で加熱して、アンチョビソースと塩こしょうで味を調えます。\n
             ５  付け合わせのフランスパンを添えて、完成です。},
    customer_id: customers[4].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/お好み焼き.jpg"), filename:"お好み焼き.jpg"),
    name: 'お好み焼き',
    time: '25分',
    tag_ids: [tags[13].id],
    material: %Q{豚バラ肉：４枚\n
                 キャベツ：２枚\n
                 (A)薄力粉：１００g\n
                 (A)卵：２個\n
                 (A)水：２００ml\n
                 (B)長芋：６０g\n
                 (B)紅生姜：２０g\n
                 (B)あげ玉：１０g\n
                 サラダ油：大さじ１\n
                 お好み焼きソース：大さじ２\n
                 マヨネーズ：大さじ２\n
                 青のり：適量\n
                 かつお節：適量},
    make: %Q{１  キャベツは粗みじん切りにします。\n
             ２  豚バラ肉は３等分に切ります。\n
             ３  ボウルに(A)を入れよく混ぜ合わせます。よく混ざったら、１、(B)を加えてさらに混ぜ合わせます。\n
             ４  フライパンにサラダ油をひき中火で熱します。温ま���たら生地を円形に流し入れ、上に２を並べます。\n
             ５  底面に焼き色がついたら裏返し、蓋をして中火のまま２分間蒸し焼きにします。中まで焼けたら火から下ろします。\n
             ６  器に盛り付け、お好み焼きソースを塗ります。マヨネーズ、青のり、かつお節を乗せたら完成です。},
    customer_id: customers[5].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/ベリーのクレープ.jpg"), filename:"ベリーのクレープ.jpg"),
    name: 'ベリーのクレープ',
    time: '30分',
    tag_ids: [tags[15].id],
    material: %Q{薄力粉：１２０g\n
                 牛乳：２００ml\n
                 砂糖：大さじ１\n
                 卵：１個\n
                 バター：１０g\n
                 ミックスベリー：１００g\n
                 グラニュー糖：大さじ２\n
                 レモン汁：大さじ１\n
                 ホイップクリーム：適量\n
                 ミント：適量},
    make: %Q{１  鍋にミックスベリー、グラニュー糖、レモン汁を入れ焦げないように中火で煮込みます。\n
             ２  全体が混ざり、ミックスベリーがしんなりしたら出来上がりです。\n
             ３  ボウルに薄力粉、砂糖を入れ混ぜ合わせます。\n
             ４  そこに牛乳を少しずつ入れダマにならないように混ぜ、最後に卵を入れ混ぜ合わせます。\n
             ５  フライパンにバターを入れ、生地を流し込み、薄く伸ばし弱火で両面焼いて出来上がりです。\n
             ６  お好みでミックスベリー、ホイップクリーム、ミントを飾り付けて完成です。},
    customer_id: customers[6].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/焼き魚.jpg"), filename:"焼き魚.jpg"),
    name: '焼き魚',
    time: '35分',
    tag_ids: [tags[22].id],
    material: %Q{魚：２尾\n
                 塩 (下処理用)：小さじ１\n
                 塩：小さじ１/２\n
                 大葉：４枚},
    make: %Q{１  バットに魚を入れて下処理用の塩をふり、ラップをかけ、冷蔵庫で１０分ほど置きます。\n
             ２  キッチンペーパーで水気を拭き取り、塩をまぶします。\n
             ３  アルミホイルを敷いた天板に２をのせます。オーブントースターで両面に焼き色が付き、火が通るまで１５分ほど焼きます。\n
             ４  大葉を敷いた器に盛り付けて完成です。},
    customer_id: customers[7].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/酢豚.jpg"), filename:"酢豚.jpg"),
    name: '酢豚',
    time: '25分',
    tag_ids: [tags[14].id],
    material: %Q{鶏むね肉：２００g\n
                 (A)酒：大さじ１\n
                 (A)塩こしょう：小さじ１/４\n
                 片栗粉：大さじ３\n
                 赤パプリカ：１/２個\n
                 黄パプリカ：１/２個\n
                 ピーマン：１個\n
                 揚げ油：適量\n
                 (B)水：１５０ml\n
                 (B)酢：５０ml\n
                 (B)砂糖：大さじ２\n
                 (B)ケチャップ：大さじ２\n
                 (B)しょうゆ：大さじ１\n
                 水溶き片栗粉：大さじ２},
    make: %Q{１  赤パプリカ、黄パプリカ、ピーマンはヘタと種を取り除き、３cm角に切り、キッチンペーパーで水気を拭き取ります。\n
             ２  フライパンに底から３cmほどの揚げ油を注ぎ、１７０℃に熱し、１を１分ほど素揚げしたら油を切ります。\n
             ３  鶏むね肉はフォークで両面に穴を開け、一口大に切ります。ボウルに移して(A)を加えて揉み込み、片栗粉をまぶします。\n
             ４  ２のフライパンを再び１７０℃に熱し、３を全体がきつね色になり、火が通るまで３分ほど揚げたら油を切ります。\n
             ５  フライパンに(B)を入れて中火でひと煮立ちさせ、水溶き片栗粉を入れてかき混ぜ、とろみがつくまで加熱します。\n
             ６  ２、４を入れてよく絡め、火から下ろします。お皿に盛りつけて完成です。},
    customer_id: customers[8].id },


  {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/まぜそば.jpg"), filename:"まぜそば.jpg"),
   name: 'まぜそば',
   time: '20分',
   tag_ids: [tags[3].id],
   material: %Q{うどん (冷凍)：２玉\n
                豚ひき肉：１６０g\n
                (A)焼肉のタレ：大さじ１\n
                (A)みそ：小さじ１\n
                (A)一味唐辛子：小さじ１\n
                サラダ油：小さじ１\n
                ニラ：４本\n
                小ねぎ：４本\n
                のり：１枚\n
                めんつゆ (2倍濃縮)：大さじ２\n
                ごま油：大さじ２\n
                しょうゆ：小さじ４\n
                すりおろしニンニク：小さじ１\n
                卵黄 (Mサイズ)：２個分},
   make: %Q{１  のりは手で細かくちぎります。\n
            ２  ニラと小ねぎは小口切りにします。\n
            ３  中火に熱したフライパンにサラダ油をひき、豚ひき肉を加えて炒めます。肉に火が通ったら(A)を加え、全体に味が馴染んだら火から下ろします。\n
            ４  耐熱ボウルにうどんを入れて、ふんわりとラップをかけ、パッケージの表記通りに電子レンジで解凍し、加熱します。\n
            ５  ボウルにタレの材料を入れてよく混ぜ合わせ、４を加えて全体に絡めます。\n
            ６  丼に盛り付け、１、２、３、卵黄をのせて完成です。},
   customer_id: customers[9].id },


   {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/青椒肉絲.jpg"), filename:"青椒肉絲.jpg"),
    name: '青椒肉絲',
    time: '40分',
    tag_ids: [tags[14].id],
    material: %Q{豚ロース (薄切り)：２００g\n
                 ピーマン：４個\n
                 タケノコの水煮：１００g\n
                 (A)塩：ひとつまみ\n
                 (A)黒こしょう：ひとつまみ\n
                 (A)すりおろしニンニク：小さじ１\n
                 (A)酒：大さじ１\n
                 片栗粉：大さじ１\n
                 (B)オイスターソース：大さじ２\n
                 (B)酒：大さじ１\n
                 (B)しょうゆ：小さじ１\n
                 (B)砂糖：小さじ１\n
                 (B)鶏ガラスープの素：小さじ１\n
                 ごま油：大さじ１},
    make: %Q{１  ピーマンの種を取り除き、細切りにします。タケノコの水煮は細切りにします。\n
             ２  豚ロースは細切りにし、ボウルに入れて(A)を加えて混ぜ合わせ、片栗粉を加えて全体にまぶします。\n
             ３  フライパンにごま油を入れて中火で熱します。２を加えてほぐしながら炒めます。\n
             ４  豚ロースに火が通ったら、１を加えてしんなりするまで中火で炒めます。\n
             ５  (B)を加えて中火で炒め合わせ、全体に味がなじんだら、火から下ろします。器に盛り付けて出来上がりです。},
    customer_id: customers[10].id },


  {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/麻婆豆腐.jpg"), filename:"麻婆豆腐.jpg"),
   name: '麻婆豆腐',
   time: '30分',
   tag_ids: [tags[17].id],
   material: %Q{絹ごし豆腐：３００g\n
                豚ひき肉：２００g\n
                長ねぎ：２０g\n
                (A)しょうゆ：大さじ２\n
                (A)コチュジャン：大さじ２\n
                (A)酒：大さじ１\n
                (A)砂糖：小さじ２\n
                ごま油：小さじ２\n
                (B)すりおろしニンニク：小さじ１/２\n
                (B)すりおろし生姜：小さじ１\n
                小ねぎ (小口切り)：適量},
   make: %Q{１  長ねぎはみじん切りにします。\n
            ２  (A)を混ぜ合わせます。\n
            ３  豚ひき肉をラップを使って軽くこね、ひとまとめにします。\n
            ４  フライパンにごま油をひき、１と(B)を入れ、弱火で炒めます。\n
            ５  ４の香りが出てきたら３を加え、強火で両面を焼き付けから徐々にほぐして炒めます。\n
            ６  ひき肉がほぐれたら２を加えて全体になじませ、豆腐を加えて弱火で３分煮ます。\n
            ７  器に盛り付け、小ねぎを散らして完成です。},
   customer_id: customers[11].id }
 ])