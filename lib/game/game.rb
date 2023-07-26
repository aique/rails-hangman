class Game

    NUM_TRIES = 10

    attr_reader :word, :tries

    def initialize(display, dictionary)
        @word = ""
        @tries = NUM_TRIES
        @display = display
        @dictionary = @dictionary
    end

    def start

    end

    def winner
        nil
    end

end