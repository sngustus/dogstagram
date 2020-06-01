class PostsController < ApplicationController
  def new
    @post = Post.new
  end  

  def create
    @post = Post.create(post_params)
    @post.save!
    redirect_to '/posts'
  end


    @posts = Post.all
  end


  private
    def post_params
      params.require(:post).permit(:image,:caption)
    end



end