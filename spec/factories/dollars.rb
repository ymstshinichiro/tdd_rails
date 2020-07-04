FactoryBot.define do
  factory :dollar do
    amount { 1 }

    factory :five_dollars do
      amount { 5 }
    end

    factory :six_dollars do
      amount { 5 }
    end
  end
end
