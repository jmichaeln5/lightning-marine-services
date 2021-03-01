class PostsController < ApplicationController
  def index 
    if authenticated?
      render json: current_user.posts
    end 
  end

  def create 
    if authenticated? 
      if post = current_user.posts.create(post_params)
        render json: post, status: :created 
      else 
        render json: post.errors, status: 400
      end
    end
  end

  private 

  def authenticated? 
    if user_signed_in?
      true 
    else
      render json: {}, status: 401
    end
  end

  def post_params 
    params.require(:post).permit(:title, :content)
  end
end
