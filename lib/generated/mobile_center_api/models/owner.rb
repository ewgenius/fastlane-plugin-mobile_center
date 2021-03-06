# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # The information about the app's owner
    #
    class Owner
      # @return [String] The unique id (UUID) of the owner
      attr_accessor :id

      # @return [String] The avatar URL of the owner
      attr_accessor :avatar_url

      # @return [String] The owner's display name
      attr_accessor :display_name

      # @return [String] The owner's email address
      attr_accessor :email

      # @return [String] The unique name that used to identify the owner
      attr_accessor :name

      # @return [Enum] The owner type. Can either be 'org' or 'user'. Possible
      # values include: 'org', 'user'
      attr_accessor :type


      #
      # Mapper for Owner class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Owner',
          type: {
            name: 'Composite',
            class_name: 'Owner',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              avatar_url: {
                required: false,
                serialized_name: 'avatar_url',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'display_name',
                type: {
                  name: 'String'
                }
              },
              email: {
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
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
