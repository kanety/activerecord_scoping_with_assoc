class Tag < ActiveRecord::Base
  has_many :docs_tags
  has_many :docs, through: :docs_tags
end
