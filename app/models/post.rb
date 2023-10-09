class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String

  validates :title, presence: true
  validates :body, presence: true

  has_many :comments, dependent: :destroy
end
