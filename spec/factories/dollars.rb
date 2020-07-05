FactoryBot.define do
  factory :dollar do
    amount { 1 }
    currency { 'USD' }

    factory :five_dollars do
      amount { 5 }
    end

    # コピペしたときにちゃんと値も直すように...
    factory :six_dollars do
      amount { 6 }
    end

    factory :ten_dollars do
      amount { 10 }
    end

    factory :fifteen_dollars do
      amount { 15 }
    end
  end
end
