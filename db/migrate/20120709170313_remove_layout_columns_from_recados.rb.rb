class RemoveLayoutColumnsFromRecados < ActiveRecord::Migration
  def up
    remove_column :recados, :background_color
    remove_column :recados, :font_family
    remove_column :recados, :pin_class
    remove_column :recados, :text_color
  end

  def down
    add_column :recados, :background_color, :string
    add_column :recados, :font_family, :string
    add_column :recados, :pin_class, :string
    add_column :recados, :text_color, :string
  end
end
