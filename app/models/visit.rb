class Visit < ActiveRecord::Base
  belongs_to :memberscar
  has_one    :inspection
end
