class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend =Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def create
    @friend =Friend.new(friends_params)

    if @friend.save
      redirect_to friends_path
    else
      render :new
    end
  end

  def update
    @friend = Friend.find(params[:id])

    if @friend.update(friends_params)
      redirect_to friends_path
    else
      render :edit
    end
  end

  def destroy
    Friend.find(params[:id]).destroy
    redirect_to friends_path
  end


  private 
  def friends_params
    params.require(:friend).permit(:name, :age, :hair_color, :eye_color, :gender, :alive )
  end

end
