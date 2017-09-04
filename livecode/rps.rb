GESTURES = ["rock","paper","scissors"]

puts "Which gesture do you choose?"
user_gesture = gets.chomp.downcase
computer_gesture = GESTURES.sample

if user_gesture != "rock" || user_gesture != "paper" || user_gesture != "scissors"
  puts "This is an invalid entry!"
  puts "Which gesture do you choose?"
  user_gesture = gets.chomp.downcase
  computer_gesture = GESTURES.sample
end

while user_gesture == computer_gesture
  puts "The computer gesture is #{computer_gesture}, so you drew!"
  puts "Which gesture do you want next? (rock,paper,scissors)"
  user_gesture = gets.chomp.downcase
  computer_gesture = GESTURES.sample
end

if (user_gesture == "rock" && computer_gesture == "paper") || (user_gesture == "scissors" && computer_gesture == "rock") || (user_gesture == "paper" && computer_gesture == "scissors")
  puts "You lose! Computer chose #{computer_gesture} and you chose #{user_gesture}"
else
  puts "You win! Computer chose #{computer_gesture} and you chose #{user_gesture}"
end
