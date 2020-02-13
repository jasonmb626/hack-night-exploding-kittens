class Card 
    def initalize(initName, initDescription)
        @name = initName
        @description = initDescription
    end

    attr_reader :name 
    attr_reader :description

    def print
        puts "#{@name}: #{@description}"
    end
end

class ExplodingKitten < Card
    def initialize
        super("Exploding Kitten","Eliminates the player that draws it, putting them permanently out of the game. The last player remaining wins the game.")
    end

    def action(player, deck)
        if player.hasCard("Defuse")
            player.discard("Defuse")
            puts "Exploding Kitten was drawn but you had a Defuse card to stave off Explosion! You live to see another day."
        else 
            player.explode
            puts "Exploding Kitten was drawn and you have no Defuse. You Exploded. Better luck next time."
        end
    end
end

# class Defuse < Card
#     def initalize
#         super("Defuse","Allows a player that draws an Exploding Kitten card to put the card back in the deck in whatever location they choose. This location may be kept secret from other players.")
#     end
# end

# class Nope < Card
#     def initalize
#         super("Nope","")
#     end
# end

# class Attack < Card
#     def initalize
#         super("Attack","")
#     end
# end

# class Skip < Card
#     def initalize
#         super("Skip","")
#     end
# end

# class Favor < Card
#     def initalize
#         super("Favor","")
#     end
# end

# class Shuffle < Card
#     def initalize
#         super("Shuffle","")
#     end
# end

# class SeeTheFuture < Card
#     def initalize
#         super("SeeTheFuture","")
#     end
# end

# class ComboCatCards < Card
#     def initalize(name, description)
#         super(name, description)
#     end
# end

# class TacoCat < ComboCatCards
#     def initalize
#         super("TacoCat", "")
#     end
# end

# class Cattermelon < ComboCatCards
#     def initalize
#         super("Cattermelon", "")
#     end
# end

# class RainbowRalphingCat < ComboCatCards
#     def initalize
#         super("RainbowRalphingCat", "")
#     end
# end

# class BeardCat < ComboCatCards
#     def initalize
#         super("BeardCat", "")
#     end
# end

# class HairyPotatoCat < ComboCatCards
#     def initalize
#         super("HairyPotatoCat", "")
#     end
# end

c = ExplodingKitten.new

puts "#{c.name} #{c.description}"
c.print

nc = Card.new("Card", "basicCard")
puts "#{nc.name} #{nc.description}"
nc.print
