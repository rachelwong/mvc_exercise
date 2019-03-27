class StatsModel
    # Initialize an empty array just incase the user attempts to choose average
    def initialize
        @numbers = []
    end
    
    def set_numbers(numbers)
        # @numbers = numbers # This would only allow one set of numbers to be added
        @numbers.concat(numbers) # Subsequent inputs can be added to the existing array
        # p "Numbers: #{@numbers}." # DEBUG
    end

    def get_numbers
        return @numbers
    end

    # Moved average function to stats_model due to its relationship to the data
    def average
        # Returns the outcome of the average calculation
        return @numbers.sum / @numbers.length.to_f
    end
end