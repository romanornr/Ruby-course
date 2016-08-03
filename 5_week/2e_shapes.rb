class Shape
  def dispay
    "shape display"
  end

  def click
    "rotated 360 degree"
  end

  def play_sound
    "playing shapes.mp3"
  end
end

class Square < Shape
 def intialize(display, play_sound)
   super(display, play_sound)
 end

 def display
    "square display"
 end

 def play_sound
   "playing square.mp3"
 end
end

class Rectangle < Shape
 def intialize(display, play_sound)
   super(display, play_sound)
 end

  def display
    "rectangle"
  end
  
  def play_sound
    "playing rectangle.mp3"
  end
end

square1 = Square.new
puts square1.display
puts square1.play_sound
puts square1.click

rectangle1 = Rectangle.new
puts rectangle1.display
puts rectangle1.play_sound
puts rectangle1.click
