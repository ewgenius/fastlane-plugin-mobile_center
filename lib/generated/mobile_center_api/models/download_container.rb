# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # A download reference
    #
    class DownloadContainer
      # @return [String] Download URI
      attr_accessor :uri


      #
      # Mapper for DownloadContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DownloadContainer',
          type: {
            name: 'Composite',
            class_name: 'DownloadContainer',
            model_properties: {
              uri: {
                required: true,
                serialized_name: 'uri',
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
