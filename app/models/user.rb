# frozen_string_literal: true

class User < ApplicationRecord
  has_many :expense_accounts, dependent: :destroy
  has_many :primary_expense_accounts, -> { where(parent_expense_account: nil, archived: false) }, dependent: :destroy
end
