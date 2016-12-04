class SignalPostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @signal_post = current_user.signal_posts.build(signal_post_params)

	if @signal_post.save
      flash[:success] = "Your new signal has been sent out!"
      redirect_to root_url
    else
	  @feed_items = []
      render 'welcome/index'
    end
  end

  def destroy
    @signal_post.destroy
    flash[:success] = "Signal deleted"
    redirect_to request.referrer || root_url
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def signal_post_params
      params.require(:signal_post).permit(:content)
    end

    def correct_user
      @signal_post = current_user.signal_posts.find_by(id: params[:id])
      redirect_to root_url if @signal_post.nil?
    end
end
