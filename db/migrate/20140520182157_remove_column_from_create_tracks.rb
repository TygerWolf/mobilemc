class RemoveColumnFromCreateTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :barindicator
  end
end


