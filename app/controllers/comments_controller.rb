class CommentsController < ApplicationController
  def create
    # It is an action to save and post comments.
  
    # It searches Blog from the values of parameter and build it as comments related to Blog.
    @couple = Couple.find(params[:couple_id])
    @comment = @couple.comments.build(comment_params)
    # Change format according to client request
    respond_to :json do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to couple_path(@couple), notice: 'Post failed...' }
      end
  end
end

private
  # Strong Parameter
  def comment_params
    params.require(:comment).permit(:couple_id, :content)
  end
end
