require './lib/die'
require './lib/player.rb'
require './lib/turn.rb'
require './lib/game.rb'

puts "Welcome to Pig!\n\n"
players = [Player.new("Gulec 1"), Player.new("Gulec 2"), Player.new("Gulec 3"), Player.new("Gulec 4")]
die=Die.new
game = Game.new (players)


until game.over?
  players.each do |player|
    puts "#{player.name}, your turn.\n\n"
    turn= Turn.new(player)

    until turn.over?
      turn.roll(die)
      puts "You rolled a #{die.roll}."

      unless turn.over?
        puts "So far this turn, you have #{turn.points} points."
        puts "Press 'h' to hold or any other key to roll again.\n\n"
        player_choice = gets.chomp
        turn.hold if player_choice == 'h'
      end
    end

    player.add_points(turn.points)
    puts "You got #{turn.points} points this turn."
    puts "You have #{player.points} points total.\n\n\n"
    puts "fafadsfdsgfdsfs"
    puts "fafadsfdsgfdsfs"
    puts "fafadsfdsgfdsfs"
  end
end

puts "Congratulations, #{game.winner.name}. You win!"