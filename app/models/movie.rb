class Movie < ApplicationRecord
  belongs_to :user
  has_many :acts
  has_many :theaters
  searchkick
end
