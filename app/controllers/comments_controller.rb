class CommentsController < ApplicationController
	skip_before_filter :verify_authenticity_token 
	def create
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to "/posts/"+@comment.post.id.to_s, notice: "Comentario creado exitosamente"
      else
        redirect_to "/posts/"+@comment.post.id.to_s, notice: "Error al crear Comentario"
      end
    end

  def comment_params
    params.require(:comment).permit(:description, :post_id)
  end
end
