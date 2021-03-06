# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Event property value counts during the time range in descending order
    #
    class EventPropertyValues
      # @return [Integer] The total property value counts
      attr_accessor :total

      # @return [Array<EventPropertyValue>] The event property values
      attr_accessor :values


      #
      # Mapper for EventPropertyValues class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventPropertyValues',
          type: {
            name: 'Composite',
            class_name: 'EventPropertyValues',
            model_properties: {
              total: {
                required: false,
                serialized_name: 'total',
                type: {
                  name: 'Number'
                }
              },
              values: {
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EventPropertyValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EventPropertyValue'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
