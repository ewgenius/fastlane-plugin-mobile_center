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
    class UserInvitationPermissionsUpdateRequest
      # @return [Array<Enum>] The permissions the user has for the app in the
      # invitation
      attr_accessor :permissions


      #
      # Mapper for UserInvitationPermissionsUpdateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserInvitationPermissionsUpdateRequest',
          type: {
            name: 'Composite',
            class_name: 'UserInvitationPermissionsUpdateRequest',
            model_properties: {
              permissions: {
                required: true,
                serialized_name: 'permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'enumElementType',
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
