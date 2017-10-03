class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.integer :engine_size
      t.text :model_name
      t.integer :sold

      t.timestamps
    end
  end
end
