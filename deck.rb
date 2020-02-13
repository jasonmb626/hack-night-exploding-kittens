require './card.rb'

class Deck
    def initialize(num_players)
        @deck = []
        @num_players = num_players
        for i in 1..5
            card = Nope.new
            @deck.append(card)
        end
        for i in 1..4
            card = Attack.new
            @deck.append(card)
        end
        for i in 1..4
            card = Skip.new 
            @deck.append(card)
        end
        for i in 1..5
            card = Favor.new
            @deck.append(card)
        end
        for i in 1..4
            card = Shuffle.new
            @deck.append(card)
        end
        for i in 1..5
            card = SeeTheFuture.new
            @deck.append(card)
        end
        for i in 1..4
            card = Cattermelon.new
            @deck.append(card)
        end
        for i in 1..4
            card = RainbowRalphingCat.new
            @deck.append(card)
        end
        for i in 1..4
            card = BeardCat.new
            @deck.append(card)
        end
        for i in 1..4
            card = HairyPotatoCat.new
            @deck.append(card)
        end
        for i in 1..4
            card = TacoCat.new
            @deck.append(card)
        end
        @deck.shuffle
    end
    
    def add_exploding_defuse_cards
        for i in 1..(@num_players - 1)
            card = ExplodingKitten.new
            @deck.append(card)
        end
        for i in 1..6
            card = Defuse.new
            @deck.append(card)
        end
    end

    def draw_card
        @deck.pop()
    end

    def shuffle
        for i in 1..@deck.length
            # Random for remaining positions. 
            r = i + (rand(@deck.length -i)); 
            temp = @deck[i]
            @deck[i] = @deck[r]
            @deck[r] = temp
        end
    end

    def print_deck 
        @deck.each do |card|
            puts card.name
        end
    end
end

#Initializes the deck and shuffles, minus the exploding & defuse cards
d = Deck.new(4)
d.add_exploding_defuse_cards()
d.shuffle()


