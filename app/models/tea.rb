class Tea < ApplicationRecord
  validates_presence_of :title, :price, :brew_time

  has_many :subscriptions, dependent: :destroy
  has_many :customers, through: :subscriptions
end
