class ChangeWhenType2ToVisit < ActiveRecord::Migration
  def self.up
    change_column :visits, :when, :datetime    
  end

  def self.down
    change_column :visits, :when, :string    
  end
end
