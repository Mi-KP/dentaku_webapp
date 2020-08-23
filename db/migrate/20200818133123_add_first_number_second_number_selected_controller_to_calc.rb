class AddFirstNumberSecondNumberSelectedControllerToCalc < ActiveRecord::Migration[5.2]
  def change
    add_column :calcs, :first_number, :integer
    add_column :calcs, :second_number, :integer
    add_column :calcs, :selected_controller, :string
  end
end 