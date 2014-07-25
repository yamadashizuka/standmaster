class AddInspectionIdToEngineroom < ActiveRecord::Migration
  def change
    add_column :enginerooms, :inspection_id, :integer
  end
end
