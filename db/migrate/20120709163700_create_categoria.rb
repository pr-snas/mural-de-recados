class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nome
      t.string :background_color

      t.timestamps
    end
  end
end
