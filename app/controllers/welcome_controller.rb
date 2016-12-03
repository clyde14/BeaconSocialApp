class WelcomeController < ApplicationController
  def index
	@signal_post = current_user.signal_posts.build if logged_in?
  end
end
