module Broadstreet

  module UserMethods

    # Create a new broadstreet user
    #
    # @param [Hash] params: Detail for the user
    # @option params [String] name: A name for the user (optional)
    # @option params [String] email: An email address
    # @option params [String] password: A password
    # @return [Hash] user detail
    def create_user(params)
      request(:post, 'api/0/users', params).user
    end

    # Add an email address to the broadstreet newsletter
    #
    # param [Hash] params: Detail for the email address
    # @option params [String] email: The email address to add
    # @return nil
    def create_newsletter_subscription(params)
      request(:post, 'api/0/newsletter', params)
      nil
    end

  end

end
