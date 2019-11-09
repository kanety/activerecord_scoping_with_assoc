class DocsTag < ActiveRecord::Base
  belongs_to :doc
  belongs_to :tag
end
