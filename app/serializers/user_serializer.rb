class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_name :messages
end
