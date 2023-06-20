class Tenant < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :members, dependent: :destroy
  validates_uniqueness_of :name
  validates_presence_of :name
end
