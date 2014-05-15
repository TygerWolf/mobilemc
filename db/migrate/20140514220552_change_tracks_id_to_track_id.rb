class ChangeTracksIdToTrackId < ActiveRecord::Migration
  def change
    remove_column :lyrics, :tracks_id
    add_column :lyrics, :track_id, :integer
  end
end
