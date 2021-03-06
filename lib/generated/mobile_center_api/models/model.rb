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
    class Model
      # @return [String] model's name
      attr_accessor :model_name

      # @return [Integer] count current of model
      attr_accessor :count

      # @return [Integer] count of previous model
      attr_accessor :previous_count


      #
      # Mapper for Model class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Model',
          type: {
            name: 'Composite',
            class_name: 'Model',
            model_properties: {
              model_name: {
                required: false,
                serialized_name: 'model_name',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              previous_count: {
                required: false,
                serialized_name: 'previous_count',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
