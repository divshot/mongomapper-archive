require "archive_document"
require "mongomapper/archive/version"

module Mongomapper
  module Archive
    extend ActiveSupport::Concern

    included do
      before_destroy :archive

      @archive = create_archive_class
    end

    module ClassMethods
      def create_archive_class
        archive_class_name = :"Archive#{self.name}"
        const_set(archive_class_name, Class.new(ArchiveDocument)) unless const_defined?(archive_class_name)
      end

      def archive
        @archive
      end
    end

    def archive
      self.class.archive.create(self.to_mongo)
    end
  end
end
