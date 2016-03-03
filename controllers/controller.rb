
  # root = TkRoot.new
  # root.title = "Highest Score to Lowest on a lane"
  #
  # filepath = Tk.getOpenFile
  game = []

  f = File.open("/Users/lorelei/Code/kristin-challenge/lane info/lane19.txt", "r")
  f.each_line do |line|
    
    game.push(line)

  end

  bowl = Bowling.new
  
  binding.pry
  
  puts game



#
# button_click = Proc.new {
#   filepath = Tk.getOpenFile
#
#
# }
#
# button = TkButton.new(root) do
#   text "Select lane's .txt file"
#   pack("side" => "left", "padx"=> "100", "pady"=> "100")
# end
#
# button.comman = button_click
#
# Tk.mainloop