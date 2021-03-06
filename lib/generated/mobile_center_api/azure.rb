# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class Azure

    #
    # Creates and initializes a new instance of the Azure class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MobileCenterClient] reference to the MobileCenterClient
    attr_reader :client

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def delete_resource_group(subscription_id, owner_name, app_name, custom_headers = nil)
      response = delete_resource_group_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def delete_resource_group_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      delete_resource_group_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_resource_group_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/resourceGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def get_resource_group(subscription_id, owner_name, app_name, custom_headers = nil)
      response = get_resource_group_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_resource_group_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      get_resource_group_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_resource_group_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/resourceGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def ping(subscription_id, owner_name, app_name, custom_headers = nil)
      response = ping_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def ping_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      ping_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def ping_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/ping/'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def get_deployment_operations(subscription_id, owner_name, app_name, custom_headers = nil)
      response = get_deployment_operations_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_deployment_operations_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      get_deployment_operations_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_deployment_operations_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      type = 'appsvc'
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/deployments/{type}/operations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'type' => type,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def submit_deployment(subscription_id, owner_name, app_name, custom_headers = nil)
      response = submit_deployment_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def submit_deployment_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      submit_deployment_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def submit_deployment_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      type = 'appsvc'
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/deployments/{type}/'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'type' => type,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def get_deployment(subscription_id, owner_name, app_name, custom_headers = nil)
      response = get_deployment_async(subscription_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_deployment_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      get_deployment_async(subscription_id, owner_name, app_name, custom_headers).value!
    end

    #
    # @param subscription_id [String]
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_deployment_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      type = 'appsvc'
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/deployments/{type}/'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'type' => type,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

  end
end
