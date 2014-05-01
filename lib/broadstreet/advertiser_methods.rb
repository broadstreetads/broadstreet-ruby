module Broadstreet

  module AdvertiserMethods

    # Create a new advertiser
    #
    # @param [Fixnum] network_id: The ID of the network for the new advertiser
    # @param [Hash] params: The detail to create the network with
    # @option params [String] name: The name for the advertiser
    # @return [Hash] the detail of the new advertiser
    def create_advertiser(network_id, params)
      request(:post, "api/1/networks/#{network_id}/advertisers", params).advertiser
    end

    # Update the detail of a given advertiser
    #
    # @param [Fixnum] advertiser_id: The ID of the advertiser to update
    # @param [Hash] params: The detail to update the network with
    # @option params [String] name: The name for the advertiser
    # @return [Hash] the detail of the updated advertiser
    def update_advertiser(advertiser_id, params)
      request(:put, "api/1/advertisers/#{advertiser_id}", params).advertiser
    end

    # Delete an advertiser
    #
    # @param [Fixnum] advertiser_id: the ID of the advertiser to delete
    # @return nil
    def delete_advertiser(advertiser_id)
      request :delete, "api/1/advertisers/#{advertiser_id}"
      nil
    end

    # Get the detail for a given advertiser
    #
    # @param [Fixnum] advertiser_id: The ID of the advertiser to lookup
    # @return [Hash] the detail hash for the advertiser
    def get_advertiser(advertiser_id)
      request(:get, "api/1/advertisers/#{advertiser_id}").advertiser
    end

    # List advertisers for a given network
    #
    # @param [Fixnum] network_id: The ID of the network to retrieve advertisers for
    # @return [Array<Hash>] an array of detail hashes for the advertisers
    def list_advertisers(network_id)
      request(:get, "api/1/advertisers", network_id: network_id).advertisers
    end

  end

end
