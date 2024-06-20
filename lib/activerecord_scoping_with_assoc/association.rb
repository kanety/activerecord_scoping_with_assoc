# frozen_string_literal: true

module ActiveRecordScopingWithAssoc
  module Association
    def target_scope
      if Thread.current[KEY] && Thread.current[KEY][klass] == true
        ActiveRecord::AssociationRelation.create(klass, self).merge!(klass.current_scope)
      else
        super
      end
    end
  end
end
