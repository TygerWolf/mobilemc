class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :block_type
      t.text :content
      t.integer :order
      t.belongs_to :tracks

      t.timestamps
    end
  end
end
