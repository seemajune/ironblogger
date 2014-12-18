class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :rage
  # has_many :tags
end
