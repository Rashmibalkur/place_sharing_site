class Share < ApplicationRecord
  belongs_to :user
  belongs_to :place
  accepts_nested_attributes_for :place, allow_destroy: true
  accepts_nested_attributes_for :user, allow_destroy: true
end
