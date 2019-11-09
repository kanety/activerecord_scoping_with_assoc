Doc.delete_all
Comment.delete_all
Tag.delete_all
DocsTag.delete_all

doc1 = Doc.create(title: "doc1")
3.times { |i| doc1.comments.create(title: "comment#{i+1}") }

doc2 = Doc.create(title: "doc2")
3.times { |i| doc2.comments.create(title: "comment#{i+1}") }

doc3 = Doc.create(title: "doc3")
3.times { |i| doc3.comments.create(title: "comment#{i+1}") }

tag1 = Tag.create(title: "tag1")
tag2 = Tag.create(title: "tag2")
tag3 = Tag.create(title: "tag3")

doc1.tags = [tag1, tag2, tag3]
doc2.tags = [tag1]
