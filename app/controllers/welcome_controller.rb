class WelcomeController < ApplicationController
  def index
    if logged_in?
		@signal_post = current_user.signal_posts.build if logged_in?
		@feed_items = current_user.feed
    end
  end
end
