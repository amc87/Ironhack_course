require "sinatra"
require "sinatra/reloader"
require "guard"
require "pry"

require "./models/blog"
require "./models/post"


blog = Blog.new

blog.add_post(Post.new("Título1", "Contenido del pos1t", true))
blog.add_post(Post.new("Título2", "Contenido del post2", true))
blog.add_post(Post.new("Título3", "Contenido del post3", true))

get "/" do
	@blog = blog.latest_posts
	erb :index
end

get "/post_details/:index" do
	@post = blog.latest_posts[params[:index].to_i]
	erb :post
end

get "/new_post" do
	erb :form
end

post "/new_post" do
	@new_post = Post.new(params[:post_title], params[:post_text], params[:sponsored])
	@blog = blog
	@blog.add_post(@new_post)
	redirect "/"
end