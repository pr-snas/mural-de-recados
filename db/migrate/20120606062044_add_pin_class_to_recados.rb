class AddPinClassToRecados < ActiveRecord::Migration
  def change
    add_column :recados, :pin_class, :string
  end
end
