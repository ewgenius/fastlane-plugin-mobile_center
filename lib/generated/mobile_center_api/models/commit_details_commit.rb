# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Model object.
    #
    #
    class CommitDetailsCommit
      # @return [String] Commit message
      attr_accessor :message

      # @return [CommitDetailsCommitAuthor]
      attr_accessor :author


      #
      # Mapper for CommitDetailsCommit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CommitDetails_commit',
          type: {
            name: 'Composite',
            class_name: 'CommitDetailsCommit',
            model_properties: {
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              author: {
                required: false,
                serialized_name: 'author',
                type: {
                  name: 'Composite',
                  class_name: 'CommitDetailsCommitAuthor'
                }
              }
            }
          }
        }
      end
    end
  end
end
