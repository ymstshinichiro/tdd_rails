class Bank
  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate)
    rates.store(Pair.new(from, to).hash_key, rate)
  end

  def rate(from, to)
    return 1 if from == to
    rates.dig(Pair.new(from, to).hash_key)
  end

  def rates
    @rates ||= {}
  end
end