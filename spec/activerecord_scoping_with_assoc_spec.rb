describe ActiveRecordScopingWithAssoc do
  it 'has a version number' do
    expect(ActiveRecordScopingWithAssoc::VERSION).not_to be(nil)
  end

  context 'associations' do
    let(:doc) do
      Doc.find_by(title: 'doc1')
    end

    let(:comment) do
      Comment.find_by(title: 'comment1')
    end

    it 'applies has_many' do
      Comment.where(title: 'comment1').scoping_with_assoc do
        expect(doc.comments.count).to eq(1)
      end
    end

    it 'applies has_many_through' do
      Tag.where(title: 'tag1').scoping_with_assoc do
        expect(doc.tags.count).to eq(1)
      end
    end

    it 'applies belongs_to' do
      Doc.where.not(title: 'doc1').scoping_with_assoc do
        expect(comment.doc).to be(nil)
      end
    end
  end

  context 'inheritance' do
    let(:doc) do
      Doc.find_by(title: 'doc1')
    end

    it 'does not apply to descendant class' do
      Comment.where(title: 'comment1').scoping_with_assoc do
        expect(doc.comments.count).to eq(1)
      end
      Comment.where(title: 'comment1').scoping_with_assoc do
        expect(doc.public_comments.count).to eq(3)
      end
    end

    it 'does not apply to ancestor class' do
      PublicComment.where(title: 'comment1').scoping_with_assoc do
        expect(doc.comments.count).to eq(3)
      end
      PublicComment.where(title: 'comment1').scoping_with_assoc do
        expect(doc.public_comments.count).to eq(1)
      end
    end
  end
end
