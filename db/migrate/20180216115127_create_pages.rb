class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :meta
      t.text :content
      t.text :detail
      t.boolean :bullet
      t.boolean :image
      t.boolean :map
      t.timestamps
    end
  end
end
