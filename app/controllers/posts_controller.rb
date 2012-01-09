class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.build(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to topic_post_path(@topic,@post), notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
    

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to topic_post_path(@topic,@post), notice: 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to topic_posts_url(@topic) }
      format.json { head :ok }
    end
  end
end
