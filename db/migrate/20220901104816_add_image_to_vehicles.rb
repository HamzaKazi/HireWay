class AddImageToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :image, :string
  end
end
