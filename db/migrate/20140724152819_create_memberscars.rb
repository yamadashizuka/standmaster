class CreateMemberscars < ActiveRecord::Migration
  def change
    create_table :memberscars do |t|
      t.string :numberplate
      t.string :automaker

      t.timestamps
    end
  end
end
