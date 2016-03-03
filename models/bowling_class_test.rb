require "minitest/autorun"
require_relative "bowling_class.rb"

class BowlingTest < Minitest::Test
  
  def test_spo
    scores = [["8", "2"], ["3", "0"], ["10"], ["10"], ["0", "0"], ["9", "1"], ["5", "5"], ["10"], ["10"], ["10", "10", "10"]]
    test_final_score = 171
    sl = scores.length
    i = 0
    final_total = 0
      
    while i <= sl - 1


      if scores[i].length == 2 && scores[i][0].to_i + scores[i][1].to_i == 10

        final_total = 10 + scores[i+1][0].to_i + final_total
      
      elsif scores[i].length == 3

        final_total = scores[i][0].to_i + scores[i][1].to_i + scores[i][2].to_i + final_total

      elsif scores[i][0].to_i == 10 && scores[i+1].length == 2

        final_total = 10 + scores[i+1][0].to_i + scores[i+1][1].to_i + final_total
      
      elsif scores[i][0].to_i == 10 && scores[i+1].length == 1 && scores[i+2].length != 1
      
        final_total = 20 + scores[i+2][0].to_i + final_total
      
      elsif scores[i][0].to_i == 10 && scores[i+1][0].to_i == 10 && scores[i+2] != nil 
      
        final_total = 30 + final_total
      
      elsif scores[i][0].to_i == 10 && scores[i+1][0].to_i == 10 && scores[i+2] == nil

        final_total = 10 + scores[i+1][0].to_i + scores[i+1][1].to_i + final_total

      else

        final_total = scores[i][0].to_i + scores[i][1].to_i + final_total

      end
      i += 1
    end
  
    assert_equal(final_total), test_final_score

  end
    