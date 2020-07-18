# frozen_string_literal: true

class ExpenseAccount < ApplicationRecord
  belongs_to :fund
  belongs_to :recurrence
  belongs_to :user
  belongs_to :parent_account

  has_many :expenses, dependent: :destroy
end
