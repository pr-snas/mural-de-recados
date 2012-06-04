class CreateRecados < ActiveRecord::Migration
  def change
    create_table :recados do |t|
      t.string :conteudo
      t.integer :width
      t.integer :height
      t.integer :z_index
      t.integer :left
      t.integer :top
      t.string :background_color
      t.string :font_family

      t.timestamps
    end
  end
end
