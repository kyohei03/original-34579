FactoryBot.define do
  factory :user do
    nickname              { '山田(大阪市内エリア' }
    email                 {Faker::Internet.free_email}
    password              { 'sb851097' }
    password_confirmation { password }
    family_name           { '山田' }
    first_name            { '太郎' }
    family_name_kana      { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    department            { '大阪営業所' }
    position              { '一般' }
  end
end
