# TODO: 本当はこのクラスもApplicationRecordとして管理できた方が良さそう
class Bank

  include Concerns::Expression::BankLogic

  def rates
    @rates ||= {}
  end

  def add_rate(from, to, rate)
    rates.store(Pair.new(from, to).hash_key, rate)
  end

  def rate(from, to)
    return 1 if from == to
    rates.dig(Pair.new(from, to).hash_key)
  end
end