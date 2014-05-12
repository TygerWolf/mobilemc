class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.text :hook
      t.integer :barindicator

      t.timestamps
    end
  end
end
