class Visit < ActiveRecord::Base
  belongs_to :memberscar
  has_one    :inspection

  accepts_nested_attributes_for :inspection
end
