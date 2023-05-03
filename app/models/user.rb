class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  #, :confirmable
  # acts_as_universal_and_determines_account
  # has_one :member, :dependent => :destroy
  has_and_belongs_to_many :tenants
end
