class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    respond_to do |format|
      if @track.save
        format.html {redirect_to track_path(@track)}
        format.js {}
      else
        format.html {render :new}
        format.js {}
      end
    end
  end

  def show
    @track = Track.find(params[:id])
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    respond_to do |format|
      if @track.update_attributes(track_params)
        format.html {redirect_to track_path}
        format.js {}
      else
        render :edit
        format.js {}
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_path
  end

  private

  def track_params
    params.require(:track).permit(:title, :lyrics, :barindicator)
  end

end
