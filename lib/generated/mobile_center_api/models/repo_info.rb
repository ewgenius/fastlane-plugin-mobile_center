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
    class RepoInfo
      # @return [String] The repository url
      attr_accessor :repo_url


      #
      # Mapper for RepoInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RepoInfo',
          type: {
            name: 'Composite',
            class_name: 'RepoInfo',
            model_properties: {
              repo_url: {
                required: true,
                serialized_name: 'repo_url',
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
