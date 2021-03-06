#server.rb
require "sinatra"
require "artii"

get "/" do 
	"My first Sinatra app."
end

get "/about" do 
	"I am a pretty cool guy and you should be my friend"
end

get "/author" do 
	erb(:author)
end

get "/hi" do 
	@greeting = "Hello World"
	erb(:hipage)
end

get "/time" do 
	@current_time = Time.new.strftime('%c')

	erb(:time)
end

get "/hours/ago/:num" do 
	@num = params[:num]
	@current_time = Time.new
	#math operators on a time value subract seconds by default
	@new_time = @current_time - (@num.to_i * 3600)

	erb(:new_time)
end 


get "/ascii/:font/:word" do 
 	@word = params[:word]
 	@font = params[:font]
 	@new_word = Artii::Base.new :font => @font
 	@final_word = @new_word.asciify(@word)
 	erb(:random_word)
end 
