require 'dry-container'
require 'dry-auto_inject'

require 'container'

require 'game/game'
require 'game/display'

describe Game do

    context 'given a new game' do
        game = Container["game"]

        it 'word must be empty' do
            expect(game.word).to eq ("")
        end

        it 'number of tries must be initialized' do
            expect(game.tries).to eq (Game::NUM_TRIES)
        end

        it 'should not be any winner' do
            expect(game.winner).to eq (nil)
        end
    end

end