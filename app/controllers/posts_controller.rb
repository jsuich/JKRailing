class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    p params
    @post = current_user.posts.create(params[:post])

    if @post.save
      puts "post created"
      redirect_to posts_path
    else
      puts "post NOT created"
      render new_post_path
    end
  end
end
