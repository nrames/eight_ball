# Nick Ames
# November 10, 2017
require 'colorize'

@response = ["Follow your heart", "You do you", "No way", "Maybe", "Ask your mother", "Not sure yet", "ask again", "Just do it", "Concentrate and ask again" ]

def question
  puts "Type any question to get answer from Magic Eight Ball, or type QUIT""\n".yellow
  gets.strip.to_s
  answer
end  
    
def answer
  puts "The Magic Eight Ball says:".yellow 
  puts @response.sample.red
  puts "Type QUIT to exit, or ask another question.".green  
  choice
end

def choice
  response = gets.strip.to_s.downcase
  if response == "quit"
    puts "Thanks for asking the Magic Eight Ball. Goodbye!".yellow
    exit
  else
    answer
  end
end

question