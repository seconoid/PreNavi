# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# student seed
name = "中山暁登"
email = "akito@example.com"
s_class = "IH13A296"
s_code = 40595
s_no = 27
password = "mogemoge"
image = open("#{Rails.root}/public/akito.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "java,ruby,UX",
    personality_list: "リーダータイプ,明るい,笑顔が素敵,かわいい"
  },
  appeals_attributes: [
    {
      caption: "基本情報",
      body:
"HAL東京高度情報処理学科３年の中山暁登と申します。
Webサービス開発が好きで、JavaやRailsを中心として開発を行っています。
性格はご覧の通り明るく、リーダーとして活動することも多いです。
能動的なでもあり、自分から企画を立ち上げて実行することも多いです。"
    },
    {
      caption: "作品・実績",
      body: "プレナビ
                  自撮リンピック
                  winroader"
    },
    {
      caption: "やりたい仕事",
      body:"Webサービス開発・運用
                 サービスのスタートアップ
                 プロダクトマネージャ"
    }
  ],
  user_attr: user_attr
)

name = "熊倉直樹"
email = "kumakura@example.com"
s_class = "IW13A296"
s_code = 40001
s_no = 10
password = "kumakuma"
image = open("#{Rails.root}/public/kumakura.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "PHP,javascript,DJ",
    personality_list: "魚類,黒い"

  },
  appeals_attributes: [
    {
      caption: "基本情報",
      body: "HAL東京３年熊倉直樹です。
                  騒ぐタイプです。"
    },
    {
      caption: "作品・実績",
      body: "winroader
                  ポートフォリオ"
    },
    {
      caption: "アルバイト・インターン経験",
      body: "房'ｓ（居酒屋 １年 ホール）
                  株式会社LIG(１ヶ月 Web開発)
                  株式会社nanofun(2ヶ月 Web開発 勤続中"
    }
  ],
  user_attr: user_attr
)

name = "下東裕太"
email = "shimopro@example.com"
s_class = "IH13A296"
s_code = 40345
s_no = 21
password = "shimoshimo"
image = open("#{Rails.root}/public/shimohigashi.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "iphoneアプリ,swfit,PHP",
    personality_list: "イケメン,かっこいい,おしゃれ"
  },
  appeals_attributes: [
    {
      caption: "基本情報",
      body: "下東です。サッカー好きです。"
    },
    {
      caption: "長所",
      body: "かっこいい
                  国際派"
    },
    {
      caption: "趣味",
      body:"動画を見る サッカー見る"
    },
    {
      caption: "希望職種",
      body:"iphoneアプリ開発"
    }
  ],
  user_attr: user_attr
)

name = "吉田感"
email = "sassu-@example.com"
s_class = "IH13A296"
s_code = 40167
s_no = 40
password = "sasusasu"
image = open("#{Rails.root}/public/shimohigashi.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "Androidアプリ,java,Unity,VR",
    personality_list: "元消防士,落ち着いている,高身長"
  },
  appeals_attributes: [
    {
      caption: "自己紹介",
      body: "高度情報処理学科３年の吉田感です。
                  ゲームにはまったら力尽きるまでやります。
                  サメを釣ったことがあります。"
    },
    {
      caption: "取得資格",
      body: "基本情報
                  応用情報"
    },
    {
      caption: "趣味",
      body: "釣り
                  デイトレード"
    },
  ],
  user_attr: user_attr
)

name = "勝又裕太"
email = "katsumata@example.com"
s_class = "IH13A296"
s_code = 40453
s_no = 10
password = "sasusasu"
image = open("#{Rails.root}/public/shimohigashi.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "Androidアプリ,java,Linux,ネットワーク,LOL",
    personality_list: "落ち着いている,スポーツ観戦,ゲーマー"
  },
  appeals_attributes: [
    {
      caption: "自己紹介",
      body: "勝又です。インフラに興味があります。"
    },
    {
      caption: "取得資格",
      body: "基本情報"
    },
    {
      caption: "趣味",
      body: "スポーツ観戦（バスケ、サッカー、アメフト、卓球など）
                  ネットゲーム(LOLなど）"
    },
    {
      caption: "信条",
      body: "自分に嘘をつかない"
    },
    {
      caption: "特技",
      body: "名前を覚える
                  タイピング"
    }
  ],
  user_attr: user_attr
)

name = "中里光利"
email = "nakasato@example.com"
s_class = "IH13A296"
s_code = 40170
s_no = 26
password = "nakasato"
image = open("#{Rails.root}/public/shimohigashi.jpg")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    skill_list: "java,javascript,python",
    personality_list: "出席率高い,PCゲーマー,"
  },
  appeals_attributes: [
    {
      caption: "自己紹介",
      body: "勝又です。インフラに興味があります。"
    },
    {
      caption: "取得資格",
      body: "基本情報"
    },
    {
      caption: "趣味",
      body: "スポーツ観戦（バスケ、サッカー、アメフト、卓球など）
                  ネットゲーム(LOLなど）"
    },
    {
      caption: "信条",
      body: "嘘をつかない"
    }
  ],
  user_attr: user_attr
)

# client seed
name = "熊谷基継"
email = "kumamoto@example.com"
c_id = "hal_tokyo"
c_name = "HAL東京"
password = "kumakuma"
image = open("#{Rails.root}/public/icon_default.png")
user_attr = 2
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  client_attributes: {
    c_id: c_id,
    c_name: c_name
  },
  user_attr: user_attr
)

# product seed
Product.create!(
  student_id: 1,
  name: "Prenavi",
  about: "就活プレゼンテーションでの学生と企業のやりとりをよりよくするためのアプリケーションです。",
  url: "http://localhost:3000"
)

# student fakers
30.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  s_class = "XX99X999"
  s_code = 90000 + n
  s_no = 99
  password = "foobar"
  image = open("#{Rails.root}/public/icon_default.png")
  user_attr = 1
  User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no
  },
  user_attr: user_attr
)
end

# client fakers
10.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  c_id = "hal_tokyo"
  c_name = "HAL東京"
  password = "foobar"
  image = open("#{Rails.root}/public/icon_default.png")
  user_attr = 2
  User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  client_attributes: {
    c_id: c_id,
    c_name: c_name
  },
  user_attr: user_attr
)
end

# favorite seeds
Favorite.create!(student_id: 1, client_id: 1)
Favorite.create!(student_id: 2, client_id: 1)
