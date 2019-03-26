class UserSerializer < ActiveModel::Serializer
  has_many :matches, dependent: :destroy
  has_many :pets, through: :matches
  attributes :id, :name, :username
end
