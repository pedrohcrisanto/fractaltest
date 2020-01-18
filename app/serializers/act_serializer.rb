class ActSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :actor_id
  belongs_to :movie
  belongs_to :actor
  belongs_to :user
end
