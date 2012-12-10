class Post
  include Mongoid::Document
  field :actual, type: String
  field :text, type: String
  field :nuevo, type: String

end