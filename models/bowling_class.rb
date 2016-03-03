class Bowling

  attr_accessor :name, :scores

  ## name = array
  ## scores = array
  
  def initialize(name, scores)
    @name = name
    @scores = scores
  
  end
  
  ## Method Strike sPare Open
  ## name = array  

  def spo(name, scores)
    name = name
    sl = scores.length
    i = 0
    final_total = 0
    
  ## Looping through the score array adding up for the final total 
    while i <= sl - 1

  ## If the frame is a spare
      if scores[i].length == 2 && scores[i][0].to_i + scores[i][1].to_i == 10

        final_total = 10 + scores[i+1][0].to_i + final_total
      
  ## if the frame is the 10th frame    
      elsif scores[i].length == 3

        final_total = scores[i][0].to_i + scores[i][1].to_i + scores[i][2].to_i + final_total
        
  ## if the frame is a strike and the next frame is either a spare or open
      elsif scores[i][0].to_i == 10 && scores[i+1].length == 2

        final_total = 10 + scores[i+1][0].to_i + scores[i+1][1].to_i + final_total
      
  ## if the next 2 frames are strikes and the next throw is not    
      elsif scores[i][0].to_i == 10 && scores[i+1].length == 1 && scores[i+2].length != 1
      
        final_total = 20 + scores[i+2][0].to_i + final_total
        
  ## if the next 3 frames are strikes     
      elsif scores[i][0].to_i == 10 && scores[i+1][0].to_i == 10 && scores[i+2] != nil 
      
        final_total = 10 + scores[i+1][0].to_i + scores[i+2][0].to_i + final_total
      
  ## for the 9th frame if you strike and have a spare or open on the 10th frame
      elsif scores[i][0].to_i == 10 && scores[i+1][0].to_i == 10 && scores[i+2] == nil

        final_total = 10 + scores[i+1][0].to_i + scores[i+1][1].to_i + final_total

      else

  ## for a open frame
  
        final_total = scores[i][0].to_i + scores[i][1].to_i + final_total

      end
      i += 1
    end
  ## final name and total score for the bowling game
    final = name, final_total
  end
  
  
  
end