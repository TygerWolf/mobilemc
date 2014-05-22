class LyricsController < ApplicationController

  before_filter :load_track

  def create
    @lyric = @track.lyrics.build(lyric_params)

    respond_to do |format|
      if @lyric.save
        format.html { redirect_to @track, alert: "Your bar's have been saved homes. BRAP! BRAP! BRAP!" }
        format.js {}
      else
        format.html {render 'lyrics/:id', alert: 'Ive been shot. your bars arent saved'}
        format.js {}
      end

    end
  end

  def show
    @lyric = Lyric.find(params[:id])
  end

  def new
    @lyric = Lyric.new
    #@lyric.track_id = params[:track_id]
  end

  def edit
    @lyric = Lyric.find(params[:id])
    @lyric.track_id = params[:track_id]
  end

  def update
    @lyric = @track.lyrics.find(params[:id])
    respond_to do |format|
      if @lyric.update_attributes(lyric_params)
        format.html {redirect_to track_path(@track)}
        # format.js {}
      else
        format.html {redirect_to edit_track_lyric_path(@track, @lyric.id)}
        # format.js {}
      end
    end
  end

  def destroy
    @lyric = Lyric.find(params[:id])
    @lyric.destroy
    redirect_to track_path(@track)
  end


  private
  def load_track
    @track = Track.find(params[:track_id])
  end
  def lyric_params
    params.require(:lyric).permit(:content, :block_type, :order, :tracks_id)
  end

end


