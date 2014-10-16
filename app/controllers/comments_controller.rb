class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    # @new_comment = Comment.new

    if @comment.save
      flash[:notice] = "Comment was saved. xoxo"
      redirect_to [@topic, @post]
      # redirect_to :back
    else
      flash[:error] = "There was am error saving the comment. Please try again."
      redirect_to [@topic, @post]
      # redirect_to :back
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was removed."
      redirect_to [@topic, @post]
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
      redirect_to [@topic, @post]
    end
  end

  private

  def comment_params
    params.require(:comment).permit( :body, :post_id )
  end
end