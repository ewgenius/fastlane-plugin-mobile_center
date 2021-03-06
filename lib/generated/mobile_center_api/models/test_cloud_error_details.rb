# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Test Cloud Error Details

    # Details of a failed operation
    #
    class TestCloudErrorDetails
      # @return [String] Status of the operation
      attr_accessor :status

      # @return [String] Human-readable message that describes the error
      attr_accessor :message


      #
      # Mapper for TestCloudErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TestCloudErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'TestCloudErrorDetails',
            model_properties: {
              status: {
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
                serialized_name: 'message',
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
