require 'pry-byebug'

require 'dry-container'
require 'dry-auto_inject'

require 'container'

require 'game/dictionary'

describe Dictionary do

    context 'given a new dictionary' do
        dictionary = Container["dictionary"]
        
        it 'should return a valid word' do
            expect(dictionary.word(5, 12).match(/^[a-z]{5,12}$/)).not_to be_nil
        end

        it 'should return a variable length valid word' do
            expect(dictionary.word(14, 16).match(/^[a-z]{14,16}$/)).not_to be_nil
        end
    end

end