class StatsView

    def display_menu
        puts "1. Enter numbers"
        puts "2. Display average."
        puts "3. Quit"
        choice = 0

        # until choice == (1..3)
        until choice.between?(1, 3)
            puts "Choose an option (1-3): "
            choice = gets.chomp.to_i
        end
        return choice
    end

    # Get a comma-separated list of numbers from the user 
    # Then split to an array. 
    # Return the array
    def get_numbers
        puts "Please enter a list of numbers separated by commas."
        puts "Press enter when done."
    # Read string and split on comm. 
    # Return array of values as string
        input = gets.strip.split(',')
        # Converts each eleemnt in array to integer and store in new array 
        values = input.map {|x| x.to_i}
        return values
    end

    def display_average(avg, numbers)
        puts "The average of #{numbers} is #{avg}."
    end

    def goodbye
        puts "See you next time!"
    end
end