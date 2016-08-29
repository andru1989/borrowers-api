class FriendResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email, :twitter

  has_many :loans, acts_as_set: true

  filter :id
  filters :last_name, :first_name, :email
  filter :first_name, apply: -> (records, value, _options) {
    records.where('friends.first_name LIKE ?', "%#{value.first}%")
  }

  paginator :offset

  def self.sortable_fields(context)
    super(context) - [:email, :twitter, :id]
  end
end
