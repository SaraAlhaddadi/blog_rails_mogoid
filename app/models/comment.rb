class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :message, type: String

  validates :name, presence: true
  validates :message, presence: true

  belongs_to :post
end
