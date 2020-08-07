class Decomposable
  attr_accessor :number, :combinations

  def initialize(number)
    @number = number
    @combinations =[]
  end

  def to_s
    @number
  end

  def smallest_component
    number / 2 + 1
  end

  def largest_component
    number - 1
  end

  def can_be_decomposed?
    ![1, 2].include?(number)
  end

  def combine(decomposeble)
    compositions.product(decomposeble.compositions).map { |p| p.flatten }
  end

  def compositions
    return [number] unless can_be_decomposed?

    combinations = [] << [number]
    (smallest_component..largest_component).to_a.map do |a|
      b = number - a
      a,b = Decomposable.new(a), Decomposable.new(b)
      combinations.concat(a.combine(b))
    end
    combinations = combinations.map { |r| r.sort }.sort.uniq
    combinations = combinations.select { |a| a.uniq == a }
    return combinations
  end
end

# comositions = Decomposable.new(10).compositions
# comositions.each { |dc| puts "#{dc}" }
# flat_comp = comositions.flatten
# flat_comp.uniq.sort.each { |n| puts "#{n}: #{flat_comp.count(n)}/#{comositions.size}" }

