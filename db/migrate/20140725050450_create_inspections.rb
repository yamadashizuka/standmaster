class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.string :mechanic
      t.text :memo
      t.integer :visit_id

      t.timestamps
    end
  end
end
