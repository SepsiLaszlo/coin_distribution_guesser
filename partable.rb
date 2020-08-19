class Partable
  attr_accessor :number

  def initialize(number)
    @number     = number
  end

  def parts
    (1..number).map { |n|
      ((1..number).to_a.combination(n).to_a)
    }.flatten(1).select { |a| a.sum == number }.sort
  end
end
