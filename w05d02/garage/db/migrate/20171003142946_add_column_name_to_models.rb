class AddColumnNameToModels < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :name, :text
  end
end
