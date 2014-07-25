class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :when
      t.integer :gas
      t.integer :odometer
      t.text :memo
      t.integer :memberscar_id

      t.timestamps
    end
  end
end
