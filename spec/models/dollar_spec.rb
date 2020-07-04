require 'rails_helper'

RSpec.describe Dollar, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it '通貨の掛け算' do
    five = FactoryBot.create(:five_dollar)
    expect(five.amount).to eq 5

    five.times(2)
    expect(five.amount).to eq 10
  end
end
