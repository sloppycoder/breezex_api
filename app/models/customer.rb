class Customer < ApplicationRecord
  enum segment: { retail: 0, smb: 1, priority: 2, priv: 3 }
  validates :rel_id, :name, :country, presence: true
  has_many :casa_accounts
  has_many :users
  has_many :credit_cards
end
