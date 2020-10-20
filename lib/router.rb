class Router

  def initialize 
    @controller = Controller.new
  end

  def perform

    puts "\n" + " "*2 + "BIENVENUE DANS THE GOSSIP PROJECT".white.on_red
    while true 
      puts "\n" + " " + "-"*35 
      puts "|  Tu veux faire quoi jeune mouss'? |"
      puts " " + "-"*35
      puts "\n" + " "*4 + "1. Je veux créer un potin"
      puts " "*4 + "2. Afficher tous les potins"
      puts " "*4 + "3. Supprimer un potin"
      puts " "*4 + "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      case params
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.index_gossips
        puts "\n"
        @controller.destroy_gossips
      when 4
        puts "\nAu revoir! "
        break
      else
        puts "\nCe choix n'existe pas , merci de réessayer."
      end
    end
  end
end