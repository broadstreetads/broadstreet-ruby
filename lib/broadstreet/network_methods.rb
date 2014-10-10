module Broadstreet

  module NetworkMethods

    # List accessible networks
    #
    # @return [Array<Hash>] the data for the networks
    def list_networks
      request(:get, 'api/1/networks').networks
    end

    # Get a particular network
    #
    # @param [Fixnum] network_id: The ID of the network to retrieve
    # @return [Hash] the network detail
    def get_network(network_id)
      request(:get, "api/1/networks/#{network_id}").network
    end

    # Update the data for a particular network
    #
    # @param [Fixnum] network_id: The ID of the network to update
    # @option params [String] :name The name of the network
    # @return [Hash] the updated network detail
    def update_network(network_id, params)
      request(:put, "api/1/networks/#{network_id}", params).network
    end

    # Create a new network and make the current user a network_admin
    #
    # @param [Hash] params: a hash of the data for the network
    # @option params [String] :name The name of the network
    # @return [Hash] the detail of the created network
    def create_network(params)
      request(:post, 'api/1/networks', params).network
    end

    # Create a network admin
    #
    # @param [Fixnum] network_id: The id of the network for the admin
    # @param [Fixnum] user_id: The id of the user to make an admin
    def create_network_admin(network_id, user_id)
      params = { user_id: user_id }
      request(:post, "api/1/networks/#{network_id}/network_admins", params)
    end

    # Remove a network admin
    #
    # @param [Fixnum] network_id: The id of the network for the admin
    # @param [Fixnum] user_id: The id of the user to make an admin
    def remove_network_admin(network_id, user_id)
      params = { user_id: user_id }
      request(:delete, "api/1/networks/#{network_id}/network_admins", params)
    end

  end

end
