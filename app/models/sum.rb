class Sum
  include Concerns::Expression::SumLogic

  attr_accessor :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end
end