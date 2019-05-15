class PostsController < ApplicationController


  def index
    @list_of_posts = Post.all
    if user_signed_in?
      redirect_to :controller => 'posts' , :action => 'Dashboard'
    end


  end
   def Dashboard

    # @result_post = Post.where(user_id:current_user_id)
    @list_of_posts = Post.all

    # puts "^^^^^^^^^^^^^^^^^^" + @list_of_posts



   end

  def show
    id = params[:id]
    @result_post =  Post.find(id)
  end

  def new

    @nb = Post.new

  end

  def create

    @post = Post.new(
        params.require(:post).permit(:title, :author, :description)
    )

    result = @post.save()

    if result
      redirect_to :controller => 'posts' , :action => 'index'
    else
      redirect_to_back
    end

  end
  def edit
    @post = Post.find(params[:id])
  end

  def update
     id = params[:id]
    @post = Post.find(id)
    if @post.update(params.require(:post).permit(:title,:author,:description))
      result = @post.save()
      if result
        redirect_to :action =>'index'
       else
         redirect_to_back
      end
    end
  end


    def destroy
          @post = Post.find(params[:id])
         @post.destroy
      redirect_to action: :index
    end



end