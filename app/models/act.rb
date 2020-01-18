class Act < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  belongs_to :user
  paginates_per 2
end
