module ActiveRecordScopingWithAssoc
  class Railtie < Rails::Railtie
    ActiveSupport.on_load :active_record do
      ActiveRecord::Relation.send :include, ActiveRecordScopingWithAssoc::Relation
      ActiveRecord::Associations::Association.prepend ActiveRecordScopingWithAssoc::Association
    end
  end
end
