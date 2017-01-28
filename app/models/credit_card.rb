class CreditCard < ApplicationRecord
  validates :due_date, :account_no, :currency, presence: true
  belongs_to :customer
end
