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
    class XamarinSolution
      # @return [String] Path to solution
      attr_accessor :path

      # @return [Array<String>] Solution configurations
      attr_accessor :configurations


      #
      # Mapper for XamarinSolution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'XamarinSolution',
          type: {
            name: 'Composite',
            class_name: 'XamarinSolution',
            model_properties: {
              path: {
                required: true,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              configurations: {
                required: true,
                serialized_name: 'configurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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