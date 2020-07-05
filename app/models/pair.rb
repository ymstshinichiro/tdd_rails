class Pair
  attr_accessor :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def equals(object)
    self.from == object.from && self.to == object.to
  end

  def hash_code
    0
  end

  def hash_key
    "#{from}-#{to}"
  end
end