require "sinatra"
require "sinatra/reloader"

#get("/") do
 # "
  #<h1>Welcome to your Sinatra App!</h1>
  #<p>Define some routes in app.rb</p>
  #"
#end

get("/") do
  # inserts rules into layout, layout runs automatically
  erb(:rules)
end

get("/rock") do
  play = ["rock", "paper", "scissors"]
  @their_play = play.sample

    if @their_play == "rock"
      @result = "We tied!"
  
    elsif @their_play == "paper"
      @result = "We lost!"
    else
      @result = "We won!"
    end

  erb(:rock)
end

get("/paper") do
  play = ["rock", "paper", "scissors"]
  @their_play = play.sample

    if @their_play == "rock"
      @result = "We won!"
  
    elsif @their_play == "paper"
      @result = "We tied!"
    else
      @result = "We lost!"
    end

  erb(:paper)
end

get("/scissors") do
  play = ["rock", "paper", "scissors"]
  @their_play = play.sample

    if @their_play == "rock"
      @result = "We lost!"
  
    elsif @their_play == "paper"
      @result = "We won!"
    else
      @result = "We tied!"
    end

  erb(:scissors)
end
