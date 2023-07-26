class Game

    NUM_TRIES = 10

    attr_reader :word, :masked_word, :tries

    def initialize(display, dictionary)
        @word = ""
        @masked_word = ""
        @tries = NUM_TRIES
        @display = display
        @dictionary = dictionary
    end

    def start(word = "")
        @word = word

        if @word.empty?
            @word = @dictionary.word
        end

        @masked_word = WordMask.new(@word)
        @masked_word.mask

        winner = false

        loop do
            @display.show(self)
            guess = ask_for_guess

            if is_char?(guess)
                if @masked_word.has_masked_char?(guess)
                    @masked_word.remove_masked_char(guess)
                end
            else
                if @word == guess
                    @masked_word.unmask
                end
            end

            @tries = @tries - 1
            winner = winner?
            
            break if winner || @tries == 0
        end

        if winner
            @display.show_win(@word)
        else
            @display.show_lose(@word)
        end
    end

    def winner?
        if @masked_word.empty?
            return false
        end

        !@masked_word.has_masked_chars?
    end

    private def ask_for_guess
        guess = ""

        loop do
            guess = @display.ask_for_guess.downcase
            break if valid_guess?(guess)
        end

        guess
    end

    private def valid_guess?(guess)
        guess.match(/^[a-z]+$/) != nil
    end

    private def is_char?(guess)
        guess.length == 1
    end

end