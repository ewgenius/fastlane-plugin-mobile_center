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
    class UserUpdateRequest
      # @return [String] The full name of the user. Might for example be first
      # and last name
      attr_accessor :display_name


      #
      # Mapper for UserUpdateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserUpdateRequest',
          type: {
            name: 'Composite',
            class_name: 'UserUpdateRequest',
            model_properties: {
              display_name: {
                required: false,
                serialized_name: 'display_name',
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
