class LoanResource < JSONAPI::Resource
  attributes :notes, :friend_id, :article_id, :returned

  has_one :article
  has_one :friend
end
