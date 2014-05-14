class RemoveLyricsFromTrack < ActiveRecord::Migration
  def change
    remove_column :tracks, :lyrics
  end
end
