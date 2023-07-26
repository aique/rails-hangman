class Display

    def show(game)
        system "clear"

        print "word: #{game.masked_word} \t tries: #{game.tries}"
        print "\n\n"
    end

    def ask_for_guess
        puts "Please, insert a valid letter or guess the word"
        gets.chomp
    end

    def show_win(word)
        puts "Congratulations!, you have guessed the word \"#{word}\""
    end

    def show_lose(word)
        puts "You have lost!, you haven't guessed the word \"#{word}\""
    end

end