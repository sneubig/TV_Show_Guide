class TvShowsController < ApplicationController
	
  before_action :set_tv_show, only: [:show, :update, :destroy]

  def index
    render json: TvShow.all, status: 200
  end

  def show
    render json: @tv_show.to_json, status: 200
  end

  def create
    @tv_show = TvShow.new( params )
    render json: @tv_show.to_json, status: 200 if @tv_show.save
  end

  def update
    render json: @tv_show.to_json, status: 200 if @tv_show.update( tv_show_params )
  end

  def destroy
    render json: @tv_show.to_json if @tv_show.destroy
  end

  private

  def set_tv_show
    @tv_show = TvShow.find(params[:id])
  end

  def tv_show_params
    params.require(:tv_show).permit(:name, :description, :image, :day, :time, :channel)
  end
end