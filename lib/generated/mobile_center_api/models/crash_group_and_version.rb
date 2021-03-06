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
    class CrashGroupAndVersion
      # @return [String]
      attr_accessor :crash_group_id

      # @return [String]
      attr_accessor :app_version


      #
      # Mapper for CrashGroupAndVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrashGroupAndVersion',
          type: {
            name: 'Composite',
            class_name: 'CrashGroupAndVersion',
            model_properties: {
              crash_group_id: {
                required: false,
                serialized_name: 'crash_group_id',
                type: {
                  name: 'String'
                }
              },
              app_version: {
                required: false,
                serialized_name: 'app_version',
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
