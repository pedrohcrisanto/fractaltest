class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :user
  has_many :acts
end
