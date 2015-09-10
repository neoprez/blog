class ArticlesController < ApplicationController
	def index
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
	end
	
	def edit
	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	def update
	end

	def destroy
	end

	private
		def article_params
			# This is often factored out into its own method so it can be reused by multiple actions in the same controller, for example create and update.
			params.require(:article).permit(:title, :text)
		end
end
