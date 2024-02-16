class CommentsController < ApplicationControlle
  before_action :set_novel

  def create
    @comment = @novel.comments.create! comments_params
    @comment.update(:score => params[:score])
    redirect_to @novel
  end

  def destroy
    @post.comments.destroy params[:id]
    redirect_to @novel
  end

  private
    def set_novel
      @post = Novel.find(params[:novel_id])
    end

    def comments_params
      params.required(:comment).permit(:content)
    end
end