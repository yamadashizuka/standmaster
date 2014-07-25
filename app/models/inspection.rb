class Inspection < ActiveRecord::Base
  belongs_to :visit
  has_one    :engineroom
  has_one    :chassis
end
