class LyricsController < ApplicationController

  before_filter :load_track

  def create
    @lyric = @track.lyrics.build(lyric_params)
    # @lyric.user_id = current_user.id
    respond_to do |format|
      if @lyric.save
        format.html {redirect_to track_path(@track.id), notice: 'Bars created Homie, BRAP BRAP BRAP!!!!!'}
        format.js
      else
        format.html {render 'lyrics/:id', alert: 'Ive been shot. your bars arent saved'}
        format.js {}
      end
    end
  end

  def edit
    @lyric = Lyric.find(params[:id])
  end

  def update
    @lyric = @track.lyrics.find(params[:id])
      if @lyric.update_attributes(lyric_params)
        redirect_to track_lyric_path(@track, @lyric.id)
      else
        redirect_to edit_track_lyric_path(@track, @lyric.id)
      end
  end


  private
  def load_track
    @track = Track.find(params[:track_id])
  end
  def lyric_params
    params.require(:lyric).permit(:content, :block_type, :order, :tracks_id)
  end


end


