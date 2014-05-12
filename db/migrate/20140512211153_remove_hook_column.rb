class RemoveHookColumn < ActiveRecord::Migration
  def change
    remove_column :tracks, :hook
    add_column :tracks, :lyrics, :text
  end
end
