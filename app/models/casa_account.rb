class CasaAccount < ApplicationRecord
  validates :account_no, :product_code, :currency, presence: true
  belongs_to :customer
end
