FactoryBot.define do
  factory :franc do
    amount { 1 }
    currency { 'CHF' }

    factory :five_francs do
      amount { 5 }
    end

    # コピペしたときにちゃんと値も直すように...
    factory :six_francs do
      amount { 6 }
    end

    factory :ten_francs do
      amount { 10 }
    end

    factory :fifteen_francs do
      amount { 15 }
    end
  end
end
