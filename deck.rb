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
        @deck.shuffle
    end

    def draw_card
        @deck.pop()
    end

    def shuffle
        for i in 0..@deck.length()-1
            # Random for remaining positions. 
            r = i + (rand(@deck.length() -i)); 
            temp = @deck[i]
            @deck[i] = @deck[r]
            @deck[r] = temp
        end
    end

    def print_deck 
        i = 0
        @deck.each do |card|
            puts "#{i}: #{card.name}"
            i = i + 1
        end
    end
end

#example use
# d = Deck.new(3)
# (Distrubute cards to player here)
# d.add_exploding_defuse_cards
# d.shuffle
# d.print_deck
# card = d.draw_card
# puts card.name
# d.print_deck