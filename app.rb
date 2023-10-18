require "sinatra"
require "sinatra/reloader"

#get("/") do
 # "
  #<h1>Welcome to your Sinatra App!</h1>
  #<p>Define some routes in app.rb</p>
  #"
#end

get("/") do
  erb(:layout)
end

get("/rock") do

    play = [rock, paper, scissors]
    their_play = play.sample

    

    if their_play == "rock"
      pp "We played rock!"
      pp "They played #{their_play}!"
      pp "We tied!"
    elsif their_play == "paper"
      pp "We played rock!"
      pp "They played #{their_play}!"
      pp "We lost!"
    else
      pp "We played rock!"
      pp "They played #{their_play}!"
      pp "We won!"
    end
end
