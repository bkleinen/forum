class SearchController < ApplicationController
  def show
      @posts = Post.containing(params[:query])
  #    respond_to do |format|
  #      format.html 
  #      format.json { render json: @posts }
  #    end
  end
end