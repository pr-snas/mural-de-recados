class AddPapelToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :papel, :string
  end
end
