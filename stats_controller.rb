require_relative 'stats_view.rb'
require_relative 'stats_model.rb'

class StatsController

    def initialize
        @view = StatsView.new
        @model = StatsModel.new
    end

    # def average
    #     # Returns the outcome of the average calculation
    #     return @model.get_numbers.sum / @model.get_numbers.length.to_f
    # end

    def max
        @model.get_numbers.max
    end

    def min
        @model.get_numbers.min
    end
    
    def menu
        exit = false
        # Loop until user wants to quit
        while !exit
            # Display the menu
            # Get a choice from menu
            choice = @view.display_menu
            puts "You chose: #{choice}."
            # Call the chosen method

            case choice
            when 1
                # Enter numbers
                numbers = @view.get_numbers

                # Store array of numbers in model
                @model.set_numbers(numbers)
            when 2
                # Calculate average
                # Call average method by passing along the model and calling the get_numbers method
                # Display average
                @view.display_average(@model.average, @model.get_numbers)
            when 3
                # Quit
                @view.goodbye
                exit = true
            end
            # Display the result

        end
    end
end