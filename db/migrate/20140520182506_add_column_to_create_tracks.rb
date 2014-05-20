class AddColumnToCreateTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :hook_bars, :integer
    add_column :tracks, :verse_bars, :integer
    add_column :tracks, :bpm, :integer
  end
end
