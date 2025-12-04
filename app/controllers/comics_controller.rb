class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to @comic
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def comic_params
      params.expect(comic: [ :series ])
    end
end
