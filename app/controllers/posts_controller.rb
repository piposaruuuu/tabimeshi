class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :move_to_index, except: [:index, :new, :create]
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to  posts_path
    else
      render :new
    end

    private

    def post_params
      params.require(:post).permit(:restaurant_name, :text, :meal_name, :country, :genre_id, :person_number_id, :price_id, :time_period_id,
                                   :image).merge(user_id: current_user.id)
    end
  
    def move_to_index
      redirect_to action: :index unless current_user == @post.user
    end
end
