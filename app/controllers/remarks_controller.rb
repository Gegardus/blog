class RemarksController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @remark = @article.remarks.create(remark_params)
        redirect_to article_path(@article)
      end
    
      private
        def remark_params
          params.require(:remark).permit(:remarker, :comment)
        end
end
