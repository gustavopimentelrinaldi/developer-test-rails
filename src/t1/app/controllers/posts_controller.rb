class PostsController < ApplicationController
	layout 'posts'
	before_action :find_post, except: [:index, :create, :new]

	def index
		@posts = Post.all.order("created_at ASC")
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, notice: t("success!")
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to posts_path, notice: t("updated!")
		else
			render :edit
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path, alert: t("deleted!")
	end

	private
	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description, :body, :author)
	end
end