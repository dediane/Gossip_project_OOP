class Controller
  
  #attr_accessor :gossip 

  def initialize
    @view = View.new
  end
  
  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
  end

  def destroy_gossips
    all_gossips = Gossip.all
    all_gossips = @view.destroy_gossips(all_gossips)
    Gossip.save_destroy(all_gossips)
  end

end