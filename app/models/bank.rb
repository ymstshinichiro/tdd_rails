class Bank
  def reduce(source, to)
    if source.is_a?(Money)
      return source
    end
    sum = source
    sum.reduce(to)
  end
end