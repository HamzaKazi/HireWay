class RenameTypeToVehicles < ActiveRecord::Migration[7.0]
  def change
    rename_column :vehicles, :type, :name
  end
end
