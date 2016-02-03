require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/post.rb')
require_relative('lib/blog.rb')

# Our fake database
post2 = Post.new("Hello World", Time.new(2016, 1, 18), "This is my first post on my cool new blog")
post = Post.new("Post number 1", Time.new(2016, 1, 12), "This is my first post")
post3 = Post.new("This is another post", Time.new(2016, 1, 20), "This is because Matt ruined my tests")

blog = Blog.new
blog.add_post(post)
blog.add_post(post2)
blog.add_post(post3)
# End fake database

get '/' do 
	@posts = blog.latest_posts
	erb(:posts)
end

get '/post_details/:post_id' do 
	index = params[:post_id].to_i
	@post = blog.latest_posts[index]
	unless @post 
		redirect to '/'
	end
	erb(:post_details)
end
