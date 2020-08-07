
class Decomposable
  attr_accessor :number, :components

  def initialize(number)
    @number     = number
    @components = [[number]]
  end

  def to_s
    @number
  end

  def product(decomposeble)
    components.product(decomposeble.components).map { |p| p.flatten }
  end

  def components
    return @components unless can_be_decomposed?

    new_components = component_numbers.to_a.map { |num| product_with_pair(num) }
    new_components.each { |v| @components.concat v }
    @components = @components.map { |r| r.sort }.sort.uniq
    @components.select { |a| a.uniq == a }
  end

  private

  def smallest_number
    number / 2 + 1
  end

  def largest_number
    number - 1
  end

  def can_be_decomposed?
    ![1, 2].include?(number)
  end

  def component_numbers
    (smallest_number..largest_number)
  end

  def product_with_pair(a)
    b    = number - a
    a, b = Decomposable.new(a), Decomposable.new(b)
    (a.product(b))
  end
end
