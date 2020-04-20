FactoryBot.define do
  factory :menu do
    menuname      { "サバのみそ煮" }
    photo         {"neko.png"}
    price         { "800円" }
    detail        { "うまうま" }
    restaurant_id { "1" }
    user_id       { "1" }
  end
end
