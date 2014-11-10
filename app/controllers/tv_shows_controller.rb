class TvShowController < ApplicationController
	before_action :set_tv_show, only: [:show, :update, :destroy]

  def index
    render json: TV_Show.all, status: 200
  end

  def show
    render json: @tv_show.to_json, status: 200
  end

  def create
    @tv_show = TV_Show.new( params )
    render json: @tv_show.to_json, status: 200 if @tv_show.save
  end

  def update
    render json: @tv_show.to_json, status: 200 if @tv_show.update( tv_show_params )
  end

  def destroy
    render json: @tv_show.to_json if @tv_show.destroy
  end

  private

  def set_grumble
    @tv_show = TV_Show.find(params[:id])
  end

  def grumble_params
    params.require(:tv_show).permit(:name, :description, :image, :day, :time, :channel)
  end
end