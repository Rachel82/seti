class SimplePagesController < ApplicationController

	def landing_page
		@posts = Post.limit(4).order("created_at DESC")
	end

  def index
  end

  def about
  end

  def contact
  end

  def press
  end

end
