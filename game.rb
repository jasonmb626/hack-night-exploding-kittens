require './card.rb'
require './deck.rb'
require './player.rb'

class Game
    def initialize(playerNames)
        @players = []
        for name in playerNames
            @players.append(Player.new(name))
        end
        @drawPile = Deck.new(playerNames.length())
        for i in 1..4
            for player in @players
                newCard = @drawPile.draw_card
                player.takeCard(newCard)
            end
        end
        for player in @players
            player.takeCard(Defuse.new)
        end
        @drawPile.add_exploding_defuse_cards
        @discardPile = []
    end

    def printPlayers
        for player in @players
            puts player.name
            player.printHand
        end
    end
end

game = Game.new(["Manda","Jason","Robert"])
game.printPlayers


