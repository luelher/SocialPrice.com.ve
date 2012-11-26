class Product
  include Mongoid::Document

  field :name, :type => String
  field :barcode, :type => String
  field :existence, :type => Boolean
  field :price, :type => Float

end