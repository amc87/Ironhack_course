require "../models/blog.rb"
require "../models/post.rb"

require "rspec"

require "rack/test"
require "pry"


describe Blog do
	before do
		@blog = Blog.new
		@post1 = Post.new("Título2", "Contenido del post1", "true")
		@post2 = Post.new("Título1", "Contenido del post2", "true")
	end

	describe "#add_post" do
		it "adds a new post to the blog" do
			expect(@blog.add_post(@post1).length).to eq(1)
		end
	end

	describe "#latest_posts" do
		it "sorts the posts from latest to earliest" do
			@blog.add_post(@post1)
			@blog.add_post(@post2)
			expect(@blog.latest_posts[0].date > @blog.latest_posts[1].date).to eq(true)
		end
	end

end
