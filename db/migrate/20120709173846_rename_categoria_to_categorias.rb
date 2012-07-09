class RenameCategoriaToCategorias < ActiveRecord::Migration
  def change
    rename_table :categoria, :categorias
  end
end
