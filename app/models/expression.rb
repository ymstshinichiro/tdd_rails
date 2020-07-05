class Expression
  # インターフェース(Rubyは書かなくてもいい)
  # 今更だけどExpressionは振る舞いなのでクラスじゃなくてmoduleでMixInすべきだったのではという気持ち
  def times(multiplier)
  end

  def plus(addend)
  end

  def reduce(bank, to)
  end
end