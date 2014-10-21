class CommentsController < ApplicationController
  def create
    # @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params.merge(post: @post))
    #@comment.post = @post
    @topic = @post.topic
    # @new_comment = Comment.new

    if @comment.save
      flash[:notice] = "Comment was saved. xoxo"
      redirect_to [@post.topic, @post]
      # redirect_to :back
    else
      flash[:error] = "There was am error saving the comment. Please try again."
      # redirect_to [@post.topic, @post]
      # redirect_to :back
      render 'posts/show'
    end
  end

  def destroy
    # @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was removed."
      redirect_to [@post.topic, @post]
      # redirect_to :back
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
      redirect_to [@post.topic, @post]
      # redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit( :body )
  end
end