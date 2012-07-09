class AddCategoriaIdToRecados < ActiveRecord::Migration
  def change
    add_column :recados, :categoria_id, :integer
  end
end
