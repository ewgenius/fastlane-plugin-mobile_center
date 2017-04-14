# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Test Run State

    # Current status of a test run
    #
    class TestRunState
      # @return [Array<String>] Multi-line message that describes the status
      attr_accessor :message

      # @return [Integer] Time (in seconds) that the client should wait for
      # before checking the status again
      attr_accessor :wait_time

      # @return [Integer] Exit code for the client
      attr_accessor :exit_code


      #
      # Mapper for TestRunState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TestRunState',
          type: {
            name: 'Composite',
            class_name: 'TestRunState',
            model_properties: {
              message: {
                required: false,
                serialized_name: 'message',
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
              },
              wait_time: {
                required: false,
                serialized_name: 'wait_time',
                type: {
                  name: 'Number'
                }
              },
              exit_code: {
                required: false,
                serialized_name: 'exit_code',
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