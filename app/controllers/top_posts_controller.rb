class TopPostsController < ApplicationController
  before_action :set_top_post, only: [:show, :edit, :update, :destroy]

  # GET /top_posts
  # GET /top_posts.json
  def index
    @top_posts = TopPost.all
  end

  # GET /top_posts/1
  # GET /top_posts/1.json
  def show
  end

  # GET /top_posts/new
  def new
    @top_post = TopPost.new
  end

  # GET /top_posts/1/edit
  def edit
  end

  # POST /top_posts
  # POST /top_posts.json
  def create
    @top_post = TopPost.new(top_post_params)

    respond_to do |format|
      if @top_post.save
        format.html { redirect_to @top_post, notice: 'Top post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @top_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @top_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_posts/1
  # PATCH/PUT /top_posts/1.json
  def update
    respond_to do |format|
      if @top_post.update(top_post_params)
        format.html { redirect_to @top_post, notice: 'Top post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @top_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_posts/1
  # DELETE /top_posts/1.json
  def destroy
    @top_post.destroy
    respond_to do |format|
      format.html { redirect_to top_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_post
      @top_post = TopPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def top_post_params
      params.require(:top_post).permit(:post, :subPostsCount, :subPostsScore)
    end
end
