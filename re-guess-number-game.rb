def title_line
  puts "=" * 25
end

def game_menu
  title_line
  puts "Guess Number v2.0"
  title_line
  puts "1. Start Game"
  puts "2. Exit"
  title_line
  puts "Press '1' or '2' & press 'Enter' to select option."
  title_line
  select = gets.chomp.to_i
  if select == 1
    game_start
  elsif select == 2
    exit
  end
end

def game_start
  player_score = []
  tries = 0

  puts "Greetings, How may i call you?"
  name = gets.chomp

  puts "Hello, #{name}!"
  puts "I got a number on my mind from 1 to 10, I'll let you guess 7 times."
  puts "Guess what number is it?: "
  number = gets.chomp.to_i

  guessing = rand 1..50

  tries += 1

  while number != guessing && tries < 7
    if number > guessing
      puts "Sorry, Wrong number... try lower."
    else
      puts "Sorry, Wrong number... try higher."
    end
    number = gets.chomp.to_i

    tries += 1

    if tries >= 7
      puts "Sorry my friend, you lost the game!"
    end
  end

  if number == guessing
    player_score.last[1] = tries
    puts player_score.inspect
    puts "Congratulation! You won the game!"

    puts "Player Score"
    title_line
    player_score.each do |var|
      puts "Name: #{var[0]} - Score: #{var[1]}"
    end
  end
end

loop do
  game_menu
end

exit
