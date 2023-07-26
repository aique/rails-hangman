require 'dry-container'
require 'dry-auto_inject'

require 'container'

require 'game/word_mask'

describe WordMask do

    context 'given a new mask with the word "intelligence"' do
        mask = WordMask.new("intelligence")
        mask.mask

        it 'mask should have 3 masked chars' do
            expect(mask.masked_chars.length).to eq (3)
        end
    end

end