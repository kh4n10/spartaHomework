class AddCompanyToModels < ActiveRecord::Migration[5.1]
  def change
  	add_reference :models, :company, index: true
  end
end
