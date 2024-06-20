# frozen_string_literal: true

module ActiveRecordScopingWithAssoc
  KEY = :_activerecord_scoping_with_assoc

  module Relation
    def scoping_with_assoc
      Thread.current[KEY] ||= {}
      Thread.current[KEY][klass] = true
      scoping { yield }
    ensure
      Thread.current[KEY] = nil
    end
  end
end
