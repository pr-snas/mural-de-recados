class AddSessionIdToRecados < ActiveRecord::Migration
  def change
    add_column :recados, :session_id, :string
  end
end
