class CreateTestTables < ActiveRecord::Migration[6.0]
  def change
    create_table :docs do |t|
      t.text       :title
    end
    create_table :comments do |t|
      t.references :doc
      t.text       :title
    end
    create_table :tags do |t|
      t.text       :title
    end
    create_table :docs_tags do |t|
      t.references :doc
      t.references :tag
    end
  end
end
