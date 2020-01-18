class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year
  belongs_to :user
  has_many :acts do
      link(:acts) { act_url(object.acts.ids) }
  end
end
