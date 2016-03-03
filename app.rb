require "pry"
require "tk"
require_relative "models/bowling_class"


## TkRoot creates a dialogue box for the user to select the text file
root = TkRoot.new
root.title = "Highest Score to Lowest on a lane"

filepath = Tk.getOpenFile

## game is created to hold the text file information

game = Hash.new{|hsh,key| hsh[key] = [] }

## f opnes the file and reads it only. Pulling the alpha characters and the digitial character for the bowlers name and scores. Pushing them into the empty hash with the names being the key and the scores being the value.
f = File.open(filepath, "r")
f.each_line do |line|
    
  names = line.scan(/[[:alpha:]]+/)
  scores = line.scan(/[[:digit:]]+/)
  
  ## game = {["names"] => [["scores"]]}  
  game[names].push(scores)
    
end

## Here we get the size of the group from length of keys we have in the game hash
## We set up early for sorting the data with the hightolow array outside the loop
## Finally we have the player_round to keep track how many players we loop through

size = game.length
player_round = 0
hightolow = []
  
## Creating a while loop we used a class for keep track of the score and adding it up for the final score
## Then pushing it into hightolow array to sort when players score the highest to lowest
while player_round <= size - 1
  
## name = array
## scores = array
## final = array
## bowl = class object 
  name = game.keys[player_round]
  scores = game[name]

  bowl = Bowling.new(name, scores)

  final = bowl.spo(name, scores)
  hightolow.push(final)
  player_round += 1
  
end
## Outputs the score into the terminal
puts hightolow.sort_by{|k, v| [-v, k]}
