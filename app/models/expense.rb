# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :expense_account
end
