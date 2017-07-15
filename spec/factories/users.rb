FactoryGirl.define do
  factory :user do
    email('jason@email.com')
    password('123456')
    password_confirmation('123456')
  end
end
