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
    class UserEmailRequest
      # @return [String] The user's email address'
      attr_accessor :user_email


      #
      # Mapper for UserEmailRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserEmailRequest',
          type: {
            name: 'Composite',
            class_name: 'UserEmailRequest',
            model_properties: {
              user_email: {
                required: true,
                serialized_name: 'user_email',
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
