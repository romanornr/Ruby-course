class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def calculate_area
    @height * @width
  end

  def calculate_perimeter
    (@height + @width)*2
  end
end

rectangle = Rectangle.new(20, 100)
puts rectangle.calculate_area
puts rectangle.calculate_perimeter
