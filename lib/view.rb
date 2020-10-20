class View
  def initialize

  end

  def create_gossip
    puts "\nTu as choisi de créer un potin.\n\n"
    puts "Quel est ton nom?"
    author = gets.chomp
    puts "Quel est ton potin?"
    content = gets.chomp
    puts "\n"
    return params = {content: "#{content}", author: "#{author}"}
  end

  def index_gossips(all_gossips)
    puts "\n\n"
    puts " "*4 + "Voici la liste des potins:".black.on_white
    puts "\n\n"
    all_gossips.each.with_index {|gossip, i| puts "#{i + 1}. " + "Auteur: " + gossip.author + " |  Contenu: " + gossip.content}
    puts "\n"
  end

  def destroy_gossips(all_gossips)
    puts "\n"
    puts "Quel est le numéro du Gossip que tu souhaites supprimer?".black.on_white
    index_to_delete = gets.chomp.to_i - 1
    if index_to_delete >= all_gossips.size || index_to_delete < 0
      puts "\n -- Potin inconnu! --"
    end
    all_gossips.each.with_index do |gossip, i|
      if i == index_to_delete
        all_gossips.delete_at(i)
        puts "\nTADA-AA-A! \n-- Potin supprimé! -- "
      end
    end
  end
end