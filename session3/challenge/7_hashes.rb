# This challenge is based off of problem 1
# modify it such that it also accepts in the hash, a color (whose values are red("#FF0000"), green("#00FF00"), and blue(#0000FF) )
# if the color is set, then it should show up in the style
# It should also not be necessary to pass in the hash, if you don't want to specify options
#
#
# EXAMPLE:
#
# html = HTMLTag.new 'p', 'Hello World', :multiline => false, :color => :red
# html.to_s     # => <p style="color:#FF0000">Hello World</p>
#
# sports = [
#   HTMLTag.new('li', 'baseball', :multiline => false, :color => :red,   :font => :serif) ,
#   HTMLTag.new('li', 'soccer',   :multiline => false, :color => :green, :font => :sans_serif) ,
#   HTMLTag.new('li', 'football', :multiline => false, :color => :blue,  :font => :monospace) ,
# ]
#
# ordered_list = HTMLTag.new 'ol' , sports.join , :multiline => true
#
# puts ordered_list  # => (as output)
#                      <ol >
#                      <li style='color:#FF0000;font-family:"Times New Roman", "Georgia"'>baseball</li>
#                      <li style='color:#00FF00;font-family:"Arial", "Verdana"'>soccer</li>
#                      <li style='color:#0000FF;font-family:"Courier New", "Lucida Console"'>football</li>
#                      </ol>

class HTMLTag
  FONTS = {
    :serif      => '"Times New Roman", "Georgia"', # values arew assigned using the hash rockets
    :sans_serif => '"Arial", "Verdana"',
    :monospace  => '"Courier New", "Lucida Console"'
  }
  
  COLORS = { 
    :red =>  '#FF0000',
    :green => '#00FF00', #values arew assigned using the hash rockets
    :blue => '#0000FF',
  }

  attr_accessor :name, :innerHTML, :font, :color, :multiline #properties of the class 
  
  # options: :multiline should be true or false
  def initialize(name, innerHTML, options=Hash.new)
    @name, @innerHTML, @options = name, innerHTML, options #instance variables
    self.font = FONTS[options[:font]] #self sets the font in this instance
    self.color = COLORS[options[:color]]
    self.multiline = options.fetch :multiline, false 
  end

  def style 
    return nil unless font || color
    to_return = "style='"
    to_return << "font-family:#{font};" if font # appends the font family if a font in order to build hte style attributes
    to_return << "color: #{color};" if color 
    to_return << "'"
    to_return
  end
  
  def to_s
    line_end = ""
    line_end = "\n" if multiline 
    "<#{name} #{style}>#{line_end}"   \ #multiline string 
      "#{innerHTML.chomp}#{line_end}" \ #substitues variable value in.
    "</#{name}>\n" #insert a new line
  end
  end
