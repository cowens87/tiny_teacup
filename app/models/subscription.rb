class Subscription < ApplicationRecord
  validates_presence_of :title, :description, :delivery_cadence
  
  belongs_to :customer
  belongs_to :tea
end
