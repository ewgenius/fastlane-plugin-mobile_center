# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Build configuration when React Native, or other JavaScript tech, is part
    # of the build steps
    #
    class JavaScriptBranchConfigurationProperties
      # @return [String] Path to package.json file for the main project, e.g.
      # "package.json" or "myapp/package.json"
      attr_accessor :package_json_path

      # @return [Boolean] Whether to run Jest unit tests, via npm test, during
      # the build. Default value: true .
      attr_accessor :run_tests


      #
      # Mapper for JavaScriptBranchConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JavaScriptBranchConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'JavaScriptBranchConfigurationProperties',
            model_properties: {
              package_json_path: {
                required: true,
                serialized_name: 'packageJsonPath',
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
              }
            }
          }
        }
      end
    end
  end
end
