FactoryBot.define do
  factory :dollar do
    amount { 1 }
    
    factory :five_dollar do
      amount { 5 }
    end
  end
end
