class AlterPagesAddAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :address, :string 
  end
end
