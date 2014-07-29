class Inspection < ActiveRecord::Base
  belongs_to :visit
  has_one    :engineroom

  accepts_nested_attributes_for :engineroom
end
