require 'cards.py'

class Deck
    @deck = []
    
    def initialize(num_players)
        @num_players = num_players
        for i in 1..5
            card = NopeCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = AttackCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = SkipCard.new 
            @deck.append(card)
        end
        for i in 1..5
            card = FavorCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = ShuffleCard.new
            @deck.append(card)
        end
        for i in 1..5
            card = SeeTheFutureCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = CattermelonCatCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = RainbowRalphingCatCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = BeardCatCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = HairyPotatoCatCard.new
            @deck.append(card)
        end
        for i in 1..4
            card = TacoCatCard.new
            @deck.append(card)
        end
        deck.shuffle
        
    end
    
    def add_exploding_defuse_cards
        for i in 1..(@num_players - 1)
            card = ExplodingKittenCard.new
            @deck.append(card)
        end
        for i in 1..6
            card = DefuseCard.new
            @deck.append(card)
        end
    end

    def draw_card
        @deck.pop()
    end

    def shuffle
        for i in 1..deck.length 
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
# deck = Deck.new(4)
# deck.add_exploding_defuse_cards()
# deck.shuffle()


