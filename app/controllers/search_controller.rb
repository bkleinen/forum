class SearchController < ApplicationController
  def show
      @topic_posts = Post.containing(params[:query])
  #    respond_to do |format|
  #      format.html 
  #      format.json { render json: @posts }
  #    end
  end
end