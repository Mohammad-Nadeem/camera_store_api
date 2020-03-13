class CategorySerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :title, :cat_type, :model, :created_at, :updated_at
  # model association
  has_many :products
end
