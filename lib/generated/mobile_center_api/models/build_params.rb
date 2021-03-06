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
    class BuildParams
      # @return [String] Version to build
      attr_accessor :source_version

      # @return [Boolean] Run build in debug mode
      attr_accessor :debug


      #
      # Mapper for BuildParams class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BuildParams',
          type: {
            name: 'Composite',
            class_name: 'BuildParams',
            model_properties: {
              source_version: {
                required: false,
                serialized_name: 'sourceVersion',
                type: {
                  name: 'String'
                }
              },
              debug: {
                required: false,
                serialized_name: 'debug',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
