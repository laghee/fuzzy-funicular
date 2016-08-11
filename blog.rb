class Blog

	@@post_archive = []
	@@total_posts = 0

	def self.all
		@@post_archive
	end

	def self.add(this)
		@@total_posts += 1
		@@post_archive << this
	end

	def self.publish
		@@post_archive.each do |post|
			puts "Title:\n #{post.get_title}"
			puts "By:\n #{post.get_author}"
			puts "Body:\n #{post.get_content}"
			puts "Created at:\n #{post.get_date}"
		end
	end

end


class BlogPost < Blog

	def self.create
		post = new
		puts 'Please enter a title for your post:'
		post.set_title = gets.chomp
		puts 'Please enter your byline:'
		post.set_author = gets.chomp
		puts 'Please enter your post content:'
		post.set_content = gets.chomp
		post.set_date = Time.now
		post.store
		puts 'Do you want to create another blog post? [Y/N]'
		create if (gets.chomp.downcase == 'y')
	end

	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_date=(date)
		@date = date
	end

	def get_date
		return @date
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end

	def store
		BlogPost.add(self)
	end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish