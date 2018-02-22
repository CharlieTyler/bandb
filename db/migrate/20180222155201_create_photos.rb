class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :picture
      t.text :caption
      t.integer :page_id
      t.timestamps
    end
  end
end
