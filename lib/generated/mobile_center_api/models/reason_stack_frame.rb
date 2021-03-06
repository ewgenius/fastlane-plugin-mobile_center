# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # frame belonging to the reason of the crash
    #
    class ReasonStackFrame
      # @return [String] name of the class
      attr_accessor :class_name

      # @return [String] name of the method
      attr_accessor :method

      # @return [Boolean] is a class method
      attr_accessor :class_method

      # @return [String] name of the file
      attr_accessor :file

      # @return [Integer] line number
      attr_accessor :line

      # @return [Boolean] this line isn't from any framework
      attr_accessor :app_code

      # @return [String] Name of the framework
      attr_accessor :framework_name

      # @return [String] Formatted frame string
      attr_accessor :code_formatted

      # @return [Enum] programming language of the frame. Possible values
      # include: 'JavaScript', 'CSharp', 'Objective-C', 'Objective-Cpp', 'Cpp',
      # 'C', 'Swift', 'Java', 'Unknown'
      attr_accessor :language

      # @return [String] parameters of the frames method
      attr_accessor :method_params

      # @return [String] Exception type.
      attr_accessor :exception_type

      # @return [String] OS exception type. (aka. SIGNAL)
      attr_accessor :os_exception_type


      #
      # Mapper for ReasonStackFrame class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReasonStackFrame',
          type: {
            name: 'Composite',
            class_name: 'ReasonStackFrame',
            model_properties: {
              class_name: {
                required: false,
                serialized_name: 'class_name',
                type: {
                  name: 'String'
                }
              },
              method: {
                required: false,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              class_method: {
                required: false,
                serialized_name: 'class_method',
                type: {
                  name: 'Boolean'
                }
              },
              file: {
                required: false,
                serialized_name: 'file',
                type: {
                  name: 'String'
                }
              },
              line: {
                required: false,
                serialized_name: 'line',
                type: {
                  name: 'Number'
                }
              },
              app_code: {
                required: false,
                serialized_name: 'app_code',
                type: {
                  name: 'Boolean'
                }
              },
              framework_name: {
                required: false,
                serialized_name: 'framework_name',
                type: {
                  name: 'String'
                }
              },
              code_formatted: {
                required: false,
                serialized_name: 'code_formatted',
                type: {
                  name: 'String'
                }
              },
              language: {
                required: false,
                serialized_name: 'language',
                type: {
                  name: 'String'
                }
              },
              method_params: {
                required: false,
                serialized_name: 'method_params',
                type: {
                  name: 'String'
                }
              },
              exception_type: {
                required: false,
                serialized_name: 'exception_type',
                type: {
                  name: 'String'
                }
              },
              os_exception_type: {
                required: false,
                serialized_name: 'os_exception_type',
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
