class RemarksController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @remark = @article.remarks.create(remark_params)
        redirect_to article_path(@article)
      end

    def destroy
        @article = Article.find(params[:article_id])
        @remark = @article.remarks.find(params[:id])
        @remark.destroy
        redirect_to article_path(@article), status: 303
  end    
     
        private
        def remark_params
          params.require(:remark).permit(:remarker, :comment)
        end
end
