class BookmarksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = List.find(params[:list_id])
    if @bookmark.save
      redirect_to list_path(@bookmark.list)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @bookmark = Bookmark.destroy(params[:id])
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
