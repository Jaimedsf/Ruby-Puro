class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
 end
  
 pen = Pen.new
 pen.color = "blue"
 pen.pen_color