FactoryBot.define do

  factory :restaurant do
    # コントローラーのテストを行う場合はidをコメントアウト
    # id            { "1" }
    name          { "ニャンコ屋" }
    cuisine_id    { "1" }
    form_id       { "テイクアウトのみ" }
    detail        { "うまい" }
    prefecture_id { "6" }
    city          { "豊島区" }
    block         { "長崎5-3-4" }
    building_name { "コーポ豊富1階" }
    accsess       { "池袋駅より3分" }
    holiday       { "水曜日" }
    open          { "11:00" }
    closed        { "19:00" }
    user_id       { "1" }
    created_at    { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
