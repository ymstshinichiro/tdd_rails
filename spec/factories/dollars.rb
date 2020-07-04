FactoryBot.define do
  factory :dollar do
    amount { 1 }

    factory :five_dollars do
      amount { 5 }
    end

    # コピペしたときにちゃんと値も直すように...
    factory :six_dollars do
      amount { 6 }
    end
  end
end
