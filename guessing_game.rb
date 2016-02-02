
def talk_to_user
    puts "Please enter a number, see all (if any) previous attempts above!"
end

def generate_random
  array = (1..100).to_a
 randomnumbergenerator = array.shuffle.first.to_i
return randomnumbergenerator
end

#variables
count = 0
guessarray = []
winning_token = false

# generate random number
randomnumber = generate_random

#will be removed before submission
puts randomnumber

#comparison of attempt 1 to random number
until count == 5 || winning_token == true

# repeting question
  if count <= 5
    talk_to_user
    guessarray << gets.chomp.to_i
    puts "you guessed :#{guessarray}"
  end

#winning ticket
  if guessarray.last.to_i == randomnumber
    puts "you win!"
    count == 100
    winning_token = true
# to let them know they repeted
  elsif guessarray.count(guessarray.last.to_i) >= 2
    puts "you already put this silly!"
    count += 1

# too high
  elsif guessarray.last.to_i >= randomnumber
    puts "You are high!"
    count += 1
# too low
  elsif guessarray.last.to_i <= randomnumber
    puts "you are too low!"
    count += 1
  end
#idiot test -high
  if guessarray.last.to_i >= guessarray[-2].to_i && guessarray[-2].to_i >= randomnumber
    puts "you are a fool for trying that number."
#idiot test -low
  elsif guessarray.last.to_i <= guessarray[-2].to_i && guessarray[-2].to_i <= randomnumber
    puts "you are a fool for trying that number."
  end

#ending statement
  if count == 5
    puts "you lose, sorry!"
    puts "The winning number was #{randomnumber}. Better luck next time."
  end
end
