# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Build configuration for Android projects
    #
    class AndroidBranchConfigurationProperties
      # @return [String] Path to the Gradle wrapper script
      attr_accessor :gradle_wrapper_path

      # @return [String] The Gradle module to build
      attr_accessor :module_property

      # @return [String] The Android build variant to build
      attr_accessor :variant

      # @return [Boolean] Whether to run unit tests during the build (default).
      # Default value: true .
      attr_accessor :run_tests

      # @return [Boolean] Whether to run lint checks during the build
      # (default). Default value: true .
      attr_accessor :run_lint


      #
      # Mapper for AndroidBranchConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AndroidBranchConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'AndroidBranchConfigurationProperties',
            model_properties: {
              gradle_wrapper_path: {
                required: false,
                serialized_name: 'gradleWrapperPath',
                type: {
                  name: 'String'
                }
              },
              module_property: {
                required: true,
                serialized_name: 'module',
                type: {
                  name: 'String'
                }
              },
              variant: {
                required: true,
                serialized_name: 'variant',
                type: {
                  name: 'String'
                }
              },
              run_tests: {
                required: false,
                serialized_name: 'runTests',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              run_lint: {
                required: false,
                serialized_name: 'runLint',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
