class Calculator
  def add(*number)
    number.inject(0){|total, number| total + number}
  end

  def subtract(*number)
    number.inject(number.delete_at(0)){|total, number| total - number}
  end

  def multiply(*number)
    number.inject(number.delete_at(0)){|total, number| total * number}
  end

  def divide(*number)
    return false  if number.include?(0)
    number.inject(number.delete_at(0)){|total, number| total / number}
  end

  def powers(*number)
 #delete_at returns the value at the index deleted and assigns to number an array that omits the value at [0]
    number.inject(number.delete_at(0)){|total, number| total ** number}
  end
end


