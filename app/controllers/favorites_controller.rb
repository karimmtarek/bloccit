class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)

    authorize favorite
    if favorite.save
      flash[:notice] = "You just favorited #{@post.title}."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "We couldn't favorite this post, please try again."
      redirect_to [@post.topic, @post]
    end
  end

  def destroy
    binding.pry
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    authorize favorite

    if favorite.destroy
      flash[:notice] = "You just unfavorited #{@post.title}."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "We couldn't unfavorite this post, please try again."
      redirect_to [@post.topic, @post]
    end
  end
end
