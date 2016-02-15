require "pry"

require 'date'

class Post
	attr_accessor :title, :date, :text, :sponsored


	def initialize(title, text, sponsored = false)

		@title = title
		@date = Time.new
		@text = text
		@sponsored = translate(sponsored)
			
	end

	def translate(sponsored)
		if sponsored == "true"
			true
		else
			false
		end
	end

end


# blog = Blog.new



# post1 = Post.new("Post 1", "hola hola hola", false)
# post2 = Post.new("Post 2", "ciao ciao ciao", true)
# post3 = Post.new("Post 3", "hello hello hello", false)
# post4 = Post.new("Post 4", "hola hola hola", false)
# post5 = Post.new("Post 5", "ciao ciao ciao", true)
# post6 = Post.new("Post 6", "hello hello hello", false)
# post7 = Post.new("Post 7", "hello hello hello", false)
# post8 = Post.new("Post 8", "hello hello hello", false)



# blog.add_post(post1)
# blog.add_post(post2)
# blog.add_post(post3)
# blog.add_post(post4)
# blog.add_post(post5)
# blog.add_post(post6)
# blog.add_post(post7)
# blog.add_post(post8)


# blog.publish_front_page

# pages = blog.pages


# # binding.pry

# puts "hola"