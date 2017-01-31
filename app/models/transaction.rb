class Transaction < ApplicationRecord
  validates :trx_date, :currency, :memo, :bal, presence: true
  validates :deposit_amount, presence: true, unless: ->(obj){obj.withdrawl_amount.present?}
  validates :withdrawl_amount, presence: true, unless: ->(obj){obj.deposit_amount.present?}
  belongs_to :casa_account
end
