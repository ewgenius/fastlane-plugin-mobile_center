# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class Identity

    #
    # Creates and initializes a new instance of the Identity class.
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
    def get_configuration(subscription_id, owner_name, app_name, custom_headers = nil)
      response = get_configuration_async(subscription_id, owner_name, app_name, custom_headers).value!
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
    def get_configuration_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      get_configuration_async(subscription_id, owner_name, app_name, custom_headers).value!
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
    def get_configuration_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/identity'

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
    def set_configuration(subscription_id, owner_name, app_name, custom_headers = nil)
      response = set_configuration_async(subscription_id, owner_name, app_name, custom_headers).value!
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
    def set_configuration_with_http_info(subscription_id, owner_name, app_name, custom_headers = nil)
      set_configuration_async(subscription_id, owner_name, app_name, custom_headers).value!
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
    def set_configuration_async(subscription_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/subscriptions/{subscription_id}/identity'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscription_id' => subscription_id,'owner_name' => owner_name,'app_name' => app_name},
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

  end
end
