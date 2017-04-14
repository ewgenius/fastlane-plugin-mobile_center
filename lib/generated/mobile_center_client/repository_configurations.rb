# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterClient
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class RepositoryConfigurations

    #
    # Creates and initializes a new instance of the RepositoryConfigurations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MobileCenterClient] reference to the MobileCenterClient
    attr_reader :client

    #
    # Returns the repository build configuration status of the app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param include_inactive [Boolean] Include inactive configurations if none are
    # active
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def list(owner_name, app_name, include_inactive = nil, custom_headers = nil)
      response = list_async(owner_name, app_name, include_inactive, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns the repository build configuration status of the app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param include_inactive [Boolean] Include inactive configurations if none are
    # active
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_with_http_info(owner_name, app_name, include_inactive = nil, custom_headers = nil)
      list_async(owner_name, app_name, include_inactive, custom_headers).value!
    end

    #
    # Returns the repository build configuration status of the app
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param include_inactive [Boolean] Include inactive configurations if none are
    # active
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(owner_name, app_name, include_inactive = nil, custom_headers = nil)
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/repo_config'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'owner_name' => owner_name,'app_name' => app_name},
          query_params: {'includeInactive' => include_inactive},
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
                    serialized_name: 'RepoConfigElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'RepoConfig'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 400
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterClient::Models::ValidationErrorResponse.mapper()
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
    # Configures the repository for build
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param repo_url [String] The repository url
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def update(owner_name, app_name, repo_url, custom_headers = nil)
      response = update_async(owner_name, app_name, repo_url, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Configures the repository for build
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param repo_url [String] The repository url
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def update_with_http_info(owner_name, app_name, repo_url, custom_headers = nil)
      update_async(owner_name, app_name, repo_url, custom_headers).value!
    end

    #
    # Configures the repository for build
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param repo_url [String] The repository url
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(owner_name, app_name, repo_url, custom_headers = nil)
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?
      fail ArgumentError, 'repo_url is nil' if repo_url.nil?

      repo = RepoInfo.new
      unless repo_url.nil?
        repo.repo_url = repo_url
      end

      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = MobileCenterClient::Models::RepoInfo.mapper()
      request_content = @client.serialize(request_mapper,  repo, 'repo')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'v0.1/apps/{owner_name}/{app_name}/repo_config'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'owner_name' => owner_name,'app_name' => app_name},
          body: request_content,
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

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterClient::Models::SuccessResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 400
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterClient::Models::ValidationErrorResponse.mapper()
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
    # Removes the configuration for the respository
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def remove(owner_name, app_name, custom_headers = nil)
      response = remove_async(owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Removes the configuration for the respository
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def remove_with_http_info(owner_name, app_name, custom_headers = nil)
      remove_async(owner_name, app_name, custom_headers).value!
    end

    #
    # Removes the configuration for the respository
    #
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def remove_async(owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/repo_config'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'owner_name' => owner_name,'app_name' => app_name},
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

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterClient::Models::SuccessResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 400
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = MobileCenterClient::Models::ValidationErrorResponse.mapper()
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