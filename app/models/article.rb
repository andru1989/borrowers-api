class Article < ActiveRecord::Base
  has_many :loans

  validates :name, presence: true
end
