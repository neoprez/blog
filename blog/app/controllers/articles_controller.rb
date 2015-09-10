class ArticlesController < ApplicationController
	def new
	end
	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	private
		def article_params
			# This is often factored out into its own method so it can be reused by multiple actions in the same controller, for example create and update.
			params.require(:article).permit(:title, :text)
		end
end
