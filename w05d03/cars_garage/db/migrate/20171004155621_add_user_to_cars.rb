class AddUserToCars < ActiveRecord::Migration[5.1]
  def change
  	add_reference :cars, :user, index: true
  end

# This creates the relationship between the two tables, cars and user.
end
