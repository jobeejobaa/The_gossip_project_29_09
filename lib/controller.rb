require 'gossip'

class ApplicationController < Sinatra::Base
    get '/' do
        erb :index, locals: {gossips: Gossip.all}
    end
    get '/gossips/new/' do
        erb :new_gossip
    end
    post '/gossips/new/' do
        puts "Ceci est le contenu du hash params : #{params}"
        puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
        puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
        Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end
    get '/gossips/:id/' do
        id = params['id'].to_i
        gossip = Gossip.find(id)
        puts "Voici le numéro du potin que tu veux : #{params["id"]}  !"
        erb :show, locals: {gossip: gossip}
    end
end

