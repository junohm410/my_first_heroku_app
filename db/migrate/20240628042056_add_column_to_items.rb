class AddColumnToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :genre, :string
  end
end
