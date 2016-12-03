class SignalPostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @signal_post = current_user.signal_posts.build(signal_post_params)

	if @signal_post.save
      flash[:success] = "Your new signal has been sent out!"
      redirect_to root_url
    else
      render 'welcome/index'
    end
  end

  def destroy
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def signal_post_params
      params.require(:signal_post).permit(:content)
    end
end
