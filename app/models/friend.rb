class Friend < ActiveRecord::Base
  has_many :loans

  validates :first_name, :last_name, :email, presence: true
end
