class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


    # 投稿の一覧取得
    def index
      @posts = Post.all.includes(:user).order(created_at: :desc)
    end

    # 新規投稿作成
    def new
      @post = Post.new
    end

    # 投稿作成処理
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to @post, notice: '投稿が作成されました。'
      else
        render :new
      end
    end

    def show
      @post = Post.find(params[:id])
    end

    # 投稿の更新処理
    def update
      if @post.update(post_params)
        redirect_to @post, notice: '投稿が更新されました。'
      else
        render :edit
      end
    end

    # 投稿の削除処理
    def destroy
      @post.destroy
      redirect_to posts_path, notice: '投稿が削除されました。'
    end

    private


  def post_params
    params.require(:post).permit(:title, :body, :area_id, :post_image, :post_image_cache, :tag)
  end


end
