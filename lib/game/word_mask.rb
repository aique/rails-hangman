class WordMask

    attr_reader :masked_chars
    
    def initialize(word)
        @masked_chars = []
        @original_word = word
    end

    def mask
        num_masked_chars = @original_word.length.div(4)

        num_masked_chars.times do
            loop do
                masked_char = @original_word[rand(0..@original_word.length - 1)]

                unless @masked_chars.include?(masked_char)
                    @masked_chars.push(masked_char)
                    break
                end
            end
        end
    end

    def unmask
        @masked_chars.clear
    end

    def has_masked_char?(char)
        @masked_chars.include?(char)
    end

    def has_masked_chars?
        !@masked_chars.empty?
    end

    def remove_masked_char(char)
        @masked_chars.delete(char)
    end

    def to_s
        response = ""

        @original_word.each_char do |char|
            if @masked_chars.include?(char)
                char = "_"
                
            end

            response += "#{char} "
        end

        response
    end

end