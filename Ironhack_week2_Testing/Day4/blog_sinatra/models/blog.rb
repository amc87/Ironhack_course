require "pry"

require 'date'

class Blog

	attr_accessor :posts, :title, :date, :text
	
	def initialize

		@posts = []

	end
	def add_post(post)

		@posts.push(post)

	end

	def publish_front_page(starting_post = 0)

		last_post = starting_post + 2
		
		@posts[starting_post..last_post].each do |single_post|
			if single_post.sponsored == true
				puts "******#{single_post.title}******"
			else
				puts single_post.title
			end
			puts "*************"
				puts single_post.text

			pages
		end

		

		pagination(starting_post)

	end

	def pagination(starting_post)


		puts "Next or previous?"
		page_choice = gets.chomp
		
		if page_choice == "next"
			starting_post += 3
		else
			starting_post -= 3
		end
		publish_front_page(starting_post)
	end

	def pages

		number_of_pages = (@posts.length / 3.0).round

		puts

	end

	def latest_posts
		@posts.sort_by {|post| post.date }.reverse
	end

end