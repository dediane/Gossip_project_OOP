require 'pry'
require 'csv'

class Gossip 

  attr_accessor :content, :author

  def initialize (author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [author, content]
    end
  end

  def self.all
    all_gossips = Array.new
    csv = CSV.read("db/gossip.csv") 
    csv.each do |row|
      gossip = Gossip.new(row[0], row[1])
      all_gossips << gossip
    end
    return all_gossips
  end

  def self.save_destroy(all_gossips)
    CSV.open("db/gossip.csv", "w") do |csv|
      all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end
end

