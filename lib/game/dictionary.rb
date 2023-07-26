class Dictionary

    MIN_LENGTH = 5
    MAX_LENGTH = 12

    def initialize
        @words = File.readlines(
            File.join(File.dirname(__FILE__), 'words.txt'),
            chomp: true
        )
    end

    def word(min_length = MIN_LENGTH, max_length = MAX_LENGTH)
        word = ""

        loop do
            index = rand(0..@words.length - 1)
            word = @words[index]
            break if valid?(word, min_length, max_length)
        end

        word
    end

    private def valid?(word, min_length, max_length)
        word.length.between?(min_length, max_length)
    end

end