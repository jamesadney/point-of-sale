class ProductSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :description, :short_description, :price_cents,
             :upc_code, :taxable

  has_one :category
  has_many :line_items

  def short_description
    description.truncate(40)
  end
end
