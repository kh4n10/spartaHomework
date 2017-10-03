class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :name
      t.integer :established
      t.text :description

      t.timestamps
    end
  end
end
