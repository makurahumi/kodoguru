FactoryBot.define do
  
  factory :user do
    nickname              { "akanami" }
    email                 { "katagawa@gmail.com" }
    password              { "code48" }
    password_confirmation { "code48" }
  end
end