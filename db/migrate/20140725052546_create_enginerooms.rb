class CreateEnginerooms < ActiveRecord::Migration
  def change
    create_table :enginerooms do |t|
      t.integer :noise_id
      t.integer :oilcolor_id

      t.timestamps
    end
  end
end
