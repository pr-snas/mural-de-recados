class ChangeZIndexDefaultValueFromRecados < ActiveRecord::Migration
  def up
    change_table :recados do |t|
      t.change :z_index, :integer, null: false, default: 0
    end
  end
end
