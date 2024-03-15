class AddAddressAndAreaToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :address, :string
    add_column :posts, :area_id, :integer
  end
end
