class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
	
	def edit
	end

	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
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
