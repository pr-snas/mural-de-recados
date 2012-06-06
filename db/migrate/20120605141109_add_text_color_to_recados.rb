class AddTextColorToRecados < ActiveRecord::Migration
  def change
    add_column :recados, :text_color, :string
  end
end
