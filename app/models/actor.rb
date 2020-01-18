class Actor < ApplicationRecord
  belongs_to :user
  has_many :acts
end
