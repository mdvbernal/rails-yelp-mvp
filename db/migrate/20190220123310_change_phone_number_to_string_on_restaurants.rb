class ChangePhoneNumberToStringOnRestaurants < ActiveRecord::Migration[5.2]
  def change
    # rename_column
    # remove_column
    change_column :restaurants, :phone_number, :string
  end
end
