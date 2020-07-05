require 'rails_helper'

RSpec.describe Money, type: :model do
  let(:five_dollars) { FactoryBot.create(:five_dollars) }
  let(:five_francs) { FactoryBot.create(:five_francs) }

  it '同一性、同値性の検証' do
    # 別の角度から検証するテストを書く (三角測量)
    expect(five_dollars.equals(five_francs)).to be false
  end

  it '通貨の検証' do
    # 別の角度から検証するテストを書く (三角測量)
    expect(Money.dollar(1).currency).to eq 'USD'
    expect(Money.franc(1).currency).to eq 'CHF'
  end

  # オリジナルのテスト. timesの実装を強制させる
  let(:money) { FactoryBot.create(:money) }

  it 'Moneyクラスのインスタンスはtimesを実装していなければならない' do
    expect(money.respond_to?('times')).to be true
  end
end
