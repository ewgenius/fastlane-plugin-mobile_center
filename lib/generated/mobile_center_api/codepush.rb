# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class Codepush

    #
    # Creates and initializes a new instance of the Codepush class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MobileCenterClient] reference to the MobileCenterClient
    attr_reader :client

    #
    # Gets the history of releases on a Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_releases(deployment_name, owner_name, app_name, custom_headers = nil)
      response = get_releases_async(deployment_name, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the history of releases on a Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_releases_with_http_info(deployment_name, owner_name, app_name, custom_headers = nil)
      get_releases_async(deployment_name, owner_name, app_name, custom_headers).value!
    end

    #
    # Gets the history of releases on a Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_releases_async(deployment_name, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'deployment_name is nil' if deployment_name.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}/releases'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'deployment_name' => deployment_name,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'LiveUpdateReleaseElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'LiveUpdateRelease'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all releases metrics for specified Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_deployment_metrics(deployment_name, owner_name, app_name, custom_headers = nil)
      response = get_deployment_metrics_async(deployment_name, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all releases metrics for specified Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_deployment_metrics_with_http_info(deployment_name, owner_name, app_name, custom_headers = nil)
      get_deployment_metrics_async(deployment_name, owner_name, app_name, custom_headers).value!
    end

    #
    # Gets all releases metrics for specified Deployment
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_deployment_metrics_async(deployment_name, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'deployment_name is nil' if deployment_name.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}/metrics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'deployment_name' => deployment_name,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'LiveUpdateReleaseMetricElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'LiveUpdateReleaseMetric'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a CodePush Deployment (e.g. 'Staging') for the given app
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Deployment] operation results.
    #
    def get_deployment(deployment_name, owner_name, app_name, custom_headers = nil)
      response = get_deployment_async(deployment_name, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a CodePush Deployment (e.g. 'Staging') for the given app
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_deployment_with_http_info(deployment_name, owner_name, app_name, custom_headers = nil)
      get_deployment_async(deployment_name, owner_name, app_name, custom_headers).value!
    end

    #
    # Gets a CodePush Deployment (e.g. 'Staging') for the given app
    #
    # @param deployment_name [String] deployment name
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_deployment_async(deployment_name, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'deployment_name is nil' if deployment_name.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'deployment_name' => deployment_name,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterApi::Models::Deployment.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of CodePush deployments (e.g. 'Staging', 'Production') for the
    # given app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get_deployments(owner_name, app_name, custom_headers = nil)
      response = get_deployments_async(owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of CodePush deployments (e.g. 'Staging', 'Production') for the
    # given app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_deployments_with_http_info(owner_name, app_name, custom_headers = nil)
      get_deployments_async(owner_name, app_name, custom_headers).value!
    end

    #
    # Gets a list of CodePush deployments (e.g. 'Staging', 'Production') for the
    # given app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_deployments_async(owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/deployments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'DeploymentElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Deployment'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
