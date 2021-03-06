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
    class DeviceConfiguration
      # @return [String] The name of the device model and OS version
      attr_accessor :name

      # @return The unique id of the device configuration
      attr_accessor :id

      # @return [Float] The tier
      attr_accessor :tier

      # @return [DeviceConfigurationImage]
      attr_accessor :image

      # @return [DeviceModel]
      attr_accessor :model

      # @return [String]
      attr_accessor :os

      # @return [String]
      attr_accessor :os_name

      # @return [Float]
      attr_accessor :market_share


      #
      # Mapper for DeviceConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceConfiguration',
          type: {
            name: 'Composite',
            class_name: 'DeviceConfiguration',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
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
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'Double'
                }
              },
              image: {
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceConfigurationImage'
                }
              },
              model: {
                required: false,
                serialized_name: 'model',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceModel'
                }
              },
              os: {
                required: false,
                serialized_name: 'os',
                type: {
                  name: 'String'
                }
              },
              os_name: {
                required: false,
                serialized_name: 'osName',
                type: {
                  name: 'String'
                }
              },
              market_share: {
                required: false,
                serialized_name: 'marketShare',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
