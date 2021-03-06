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
    class CrashAttachment
      # @return [String]
      attr_accessor :app_id

      # @return [String]
      attr_accessor :attachment_id

      # @return [String]
      attr_accessor :crash_id

      # @return [String]
      attr_accessor :blob_location

      # @return [String]
      attr_accessor :content_type

      # @return [String]
      attr_accessor :file_name

      # @return [DateTime]
      attr_accessor :created_time

      # @return [Float]
      attr_accessor :size


      #
      # Mapper for CrashAttachment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrashAttachment',
          type: {
            name: 'Composite',
            class_name: 'CrashAttachment',
            model_properties: {
              app_id: {
                required: true,
                serialized_name: 'app_id',
                type: {
                  name: 'String'
                }
              },
              attachment_id: {
                required: true,
                serialized_name: 'attachment_id',
                type: {
                  name: 'String'
                }
              },
              crash_id: {
                required: true,
                serialized_name: 'crash_id',
                type: {
                  name: 'String'
                }
              },
              blob_location: {
                required: true,
                serialized_name: 'blob_location',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                required: true,
                serialized_name: 'content_type',
                type: {
                  name: 'String'
                }
              },
              file_name: {
                required: true,
                serialized_name: 'file_name',
                type: {
                  name: 'String'
                }
              },
              created_time: {
                required: true,
                serialized_name: 'created_time',
                type: {
                  name: 'DateTime'
                }
              },
              size: {
                required: true,
                serialized_name: 'size',
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
