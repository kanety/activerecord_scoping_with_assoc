class Doc < ActiveRecord::Base
  has_many :comments
  has_many :public_comments

  has_many :docs_tags
  has_many :tags, through: :docs_tags
end
