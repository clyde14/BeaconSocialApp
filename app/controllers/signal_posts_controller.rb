class SignalPostsController < ApplicationController
  before_action :set_signal_post, only: [:show, :edit, :update, :destroy]

  # GET /signal_posts
  # GET /signal_posts.json
  def index
    @signal_posts = SignalPost.all
  end

  # GET /signal_posts/1
  # GET /signal_posts/1.json
  def show
  end

  # GET /signal_posts/new
  def new
    @signal_post = SignalPost.new
  end

  # GET /signal_posts/1/edit
  def edit
  end

  # POST /signal_posts
  # POST /signal_posts.json
  def create
    @signal_post = SignalPost.new(signal_post_params)

    respond_to do |format|
      if @signal_post.save
        format.html { redirect_to @signal_post, notice: 'Signal post was successfully created.' }
        format.json { render :show, status: :created, location: @signal_post }
      else
        format.html { render :new }
        format.json { render json: @signal_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signal_posts/1
  # PATCH/PUT /signal_posts/1.json
  def update
    respond_to do |format|
      if @signal_post.update(signal_post_params)
        format.html { redirect_to @signal_post, notice: 'Signal post was successfully updated.' }
        format.json { render :show, status: :ok, location: @signal_post }
      else
        format.html { render :edit }
        format.json { render json: @signal_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signal_posts/1
  # DELETE /signal_posts/1.json
  def destroy
    @signal_post.destroy
    respond_to do |format|
      format.html { redirect_to signal_posts_url, notice: 'Signal post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signal_post
      @signal_post = SignalPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signal_post_params
      params.require(:signal_post).permit(:content, :userId)
    end
end
