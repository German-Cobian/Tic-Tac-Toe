require_relative '../lib/board'
require_relative '../lib/player'

puts
puts
puts '******  Welcome to TIC-TAC-TOE!  ******'
board = Board.new
puts
puts board.display
puts
puts
puts 'Player 1 enter your name.'
puts
name_player1 = gets.chomp.upcase
puts
puts 'Player 2 enter your name'
puts
name_player2 = gets.chomp.upcase
puts
puts "#{name_player1}, choose your token: either O or X"
puts
token_player1 = gets.strip.upcase
puts

until %w[X O].include?(token_player1)
  puts 'That is not a valid token. Choose either O or X'
  puts
  token_player1 = gets.strip.upcase
  puts
  next unless token_player1 != 'X' && token_player1 != 'O'

  puts "Ok #{name_player1}, you get assigned X"
  puts
  token_player1 = 'X'
end
token_player2 = token_player1 == 'X' ? 'O' : 'X'
player1 = Player.new(name_player1, token_player1, board)
player2 = Player.new(name_player2, token_player2, board)
puts "#{player1.name} your token is: #{player1.token}. #{player2.name} your token is: #{player2.token}"
puts
i = 0
while i < 9
  if i.even?
    up_next = player1
  elsif i.odd?
    up_next = player2
  end
  puts "#{up_next.name} its your move. Enter the number of the position where you wish to place your token."
  puts
  location = gets.chomp.to_i - 1
  puts
  while location.negative? || location > 8
    puts 'That position is not on the board. Select again.'
    puts
    location = gets.chomp.to_i - 1
    puts
  end
  while board.position_taken?(location)
    puts 'That position is already occupied. Select from among the empty positions.'
    puts
    location = gets.chomp.to_i - 1
    puts
  end
  up_next.turn(location)
  puts board.display
  puts
  if board.win_check?
    puts
    puts "#{up_next.name} wins this round!"
    puts
    i = 9
  end
  puts
  puts 'Game is over and there is no winner!' if board.draw?
  puts
  i += 1
end
