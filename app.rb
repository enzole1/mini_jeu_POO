require 'bundler'
require 'pry'
require 'rubygems'
require 'open-uri'

Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")


binding.pry 

def fight(player1, player2)
    
    while player1.life_points > 0 && player2.life_points >0 do

        puts "Voici l'etat de chaque jouer :"

        player1.show_state
        player2.show_state

        puts "\n\n"+"-"*10+"\n\n"

        puts "Passons à la phase d'attaque :"

        player1.attacks(player2)

            if player2.life_points > 0

               player2.attacks(player1)
               
            else

                break
            end

            puts "\n\n"+"-"*10+"\n\n"
        end

        puts "Combat fini !"

end

fight(player1,player2)


