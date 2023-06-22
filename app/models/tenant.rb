class Tenant < ApplicationRecord
  
  has_and_belongs_to_many :users
  has_many :members, dependent: :destroy
  has_many :projects, dependent: :destroy
  validates_uniqueness_of :name
  validates_presence_of :name
  
  def can_create_project?
    (plan== 'free' && projects.count < 1) || (plan == 'premium')
  end
end
