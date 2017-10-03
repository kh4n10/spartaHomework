class RemoveModelNameFromModels < ActiveRecord::Migration[5.1]
  def change
    remove_column :models, :model_name, :text
  end
end
