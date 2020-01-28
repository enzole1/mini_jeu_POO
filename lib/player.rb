class Player
    attr_accessor :name, :life_points


    def initialize(name, life_points=10)
        @name = name.to_s
        @life_points = life_points.to_i
    end

    def show_state
        if @life_point > 1    
            puts " Le niveau de vie de #{@name} est de #{@life_points}"
        else
            puts " Le niveau de vie de #{@name} est de #{@life_points}"
        end
    end


    def gets_damage(damage_received)
        @life_points = @life_points - damage_received.to_i
        
        if @life_points <= 0
            puts "le joueur #{@name} a été tué !" 
        else 
            puts "Le joueur #{@name} subit #{damage_received}."
        end
    end

    def attacks(player)
        puts "le joueur #{@name} attaque le joueur #{player.name}"
        damage = compute_damage
        player.gets_damage(damage)
        puts "il lui inflige #{damage} points de dommages"
    end

    def compute_damage
        return rand(1..6)
    end




    
end