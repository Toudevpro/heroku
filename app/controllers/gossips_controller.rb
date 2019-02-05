class GossipsController < ApplicationController
  def show
    @gossips = Gossip.find(params[:id])
  end

   def new
    puts "*" * 60
    puts "on est dans le new gossip"
    puts params
    puts "*" * 60
   end

   def create
    puts "$" * 60
    puts "dans le Create ceci est le contenu de params :"
    puts params
    puts params[:content]
    puts params[:author]
    puts params[:title]
    puts "$" * 60

    @gossip = Gossip.new(
      'content' => params[:content],
      'title' => params[:title],
      'user_id' => "11" )

    if @gossip.save
    redirect_to root_path
    else
    render 'new'
    end

   end


end
