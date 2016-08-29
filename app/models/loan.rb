class Loan < ActiveRecord::Base
  belongs_to :friend
  belongs_to :article

  validates :friend, :article, presence: true
end
