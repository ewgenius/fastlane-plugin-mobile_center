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
    class CrashGroupOperatingSystem
      # @return [String] OS name
      attr_accessor :operating_system_name

      # @return [Integer] count of OS
      attr_accessor :crash_count


      #
      # Mapper for CrashGroupOperatingSystem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrashGroupOperatingSystem',
          type: {
            name: 'Composite',
            class_name: 'CrashGroupOperatingSystem',
            model_properties: {
              operating_system_name: {
                required: false,
                serialized_name: 'operating_system_name',
                type: {
                  name: 'String'
                }
              },
              crash_count: {
                required: false,
                serialized_name: 'crash_count',
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