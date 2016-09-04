class PostsController <ApplicationController
	def index
		@posts = Post.all
	end
	def show
		@post = Post.find(params[:id])
	end
	def new
		@post = Post.new
	end
	def create
		post = Post.new(post_params)

		if post.save!
			#redirect_to new_post_path
    	redirect_to posts_path
    	#render :index
  	else
    	render :new
  end
	end

	private

	def post_params
		#binding.pry
		params.require(:post).permit(:title, :content)
	end
end