# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterClient
  module Models
    #
    # Model object.
    #
    #
    class Failure
      # @return [String]
      attr_accessor :message


      #
      # Mapper for Failure class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Failure',
          type: {
            name: 'Composite',
            class_name: 'Failure',
            model_properties: {
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