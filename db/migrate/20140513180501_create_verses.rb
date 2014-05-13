class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.text :verse

      t.timestamps
    end
  end
end
