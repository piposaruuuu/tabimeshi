class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, except: [:index, :show, :new, :create]
  before_action :set_area, only: [:index, :new, :create]

  def index
    @posts = @area.posts.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
     @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:restaurant_name, :text, :meal_name, :address, :country, :genre_id, :person_number_id, :price_id, :time_period_id,
                                 :image).merge(user_id: current_user.id, area_id: params[:area_id])
  end

  def move_to_index
    redirect_to action: :index unless current_user == @post.user
  end

  def set_area
    @area = Area.find(params[:area_id])
  end
end
