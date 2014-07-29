class Inspection < ActiveRecord::Base
  belongs_to :visit
  has_one    :engineroom
  has_one    :chassis

  accepts_nested_attributes_for :engineroom
end
