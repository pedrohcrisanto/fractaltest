class Actor < ApplicationRecord
  belongs_to :user
  has_many :acts
  paginates_per 2
end
