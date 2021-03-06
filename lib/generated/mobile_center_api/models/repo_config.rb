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
    class RepoConfig
      # @return [String] Type of repository
      attr_accessor :type

      # @return [Enum] State of the configuration. Possible values include:
      # 'unauthorized', 'inactive', 'active'
      attr_accessor :state

      # @return [String] URL of the repository
      attr_accessor :repo_url

      # @return [String] Repository identifier
      attr_accessor :id


      #
      # Mapper for RepoConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RepoConfig',
          type: {
            name: 'Composite',
            class_name: 'RepoConfig',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              repo_url: {
                required: false,
                serialized_name: 'repo_url',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
