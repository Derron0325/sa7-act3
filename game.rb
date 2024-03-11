class Game
    def initialize
      @total_points = 0
      @rooms = { 1 => 5, 2 => 10, 3 => 15 }
    end
  
    def start
      puts "Welcome to the Adventure Game!"
      puts "You have #{@total_points} points."
  
      loop do
        show_menu
        choice = gets.chomp.downcase
  
        case choice
        when 'exit'
          end_game
          break
        when '1', '2', '3'
          enter_room(choice.to_i)
        else
          puts "Invalid choice. Please enter '1', '2', '3', or 'exit'."
        end
      end
    end
  
    private
  
    def show_menu
      puts "Choose a room (1-3) to enter or 'exit' to end the game:"
    end
  
    def enter_room(room_number)
      points = @rooms[room_number]
  
      if points
        @total_points += points
        puts "You entered Room #{room_number} and earned #{points} points."
      else
        puts "Invalid room number. Please choose a room (1-3) or 'exit'."
      end
    end
  
    def end_game
      puts "Game over! You collected a total of #{@total_points} points."
    end
  end
  
  # Create an instance of the Game class and start the game
  game = Game.new
  game.start