class Player
    def initialize(name)
        @name = name
        @active = true
        @cards = []
    end

    attr_reader:name
    attr_reader:active
    attr_reader:cards

    def takeCard(card)
        @cards.push(card)
    end

    def explode
        @active = false;
    end

    def hasCard(name)
        @cards.map do |card|
            if card.name == name
                return true
            end
        end
    end

    def discard(cardName)
        @cards.each_with_index.map do |card,idx|
            puts "cur card is #{card.name} - looking for #{cardName}"
            if card.name == cardName
                @cards.delete_at(idx)
            end
        end
    end
end
