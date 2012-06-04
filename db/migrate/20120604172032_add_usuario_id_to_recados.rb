class AddUsuarioIdToRecados < ActiveRecord::Migration
  def change
    add_column :recados, :usuario_id, :integer
  end
end
