module Broadstreet

  module ZoneMethods

    # Create a new zone
    #
    # @param [Fixnum] network_id: the id of the network to create the zone on
    # @param [Hash] params: a hash of the data for the zone
    # @option params [String] :name The name of the zone
    # @option params [Boolean] :self_server Whether the zone is self serve
    # @option params [String] :pricing_callback_url Callback for pricing on self-serve zones
    # @return [Hash] the zone detail
    def create_zone(network_id, params)
      request(:post, "api/1/networks/#{network_id}/zones", params).zone
    end

    # Get a zone
    #
    # @param [Fixnum] zone_id: The ID of the zone to retrieve
    # @return [Hash] the zone detail
    def get_zone(zone_id)
      request(:get, "api/1/zones/#{zone_id}").zone
    end

    # Delete a zone
    #
    # @param [Fixnum] zone_id: THe ID of the zone to delete
    # @return nil
    def delete_zone(zone_id)
      request :delete, "api/1/zones/#{zone_id}"
      nil
    end

    # List zones for a given network
    #
    # @param [Fixnum] network_id: The ID of the network to retrieve zones for
    # @return [Array<Hash>] the data for the zones on the specified network
    def list_zones(network_id)
      request(:get, 'api/1/zones', network_id: network_id).zones
    end

    # Update a zone
    #
    # @param [Fixnum] zone_id: The ID of the zone to update
    # @param [Hash] params: a hash of the data for the zone
    # @option params [String] :name The name of the zone
    # @option params [Boolean] :self_server Whether the zone is self serve
    # @option params [String] :pricing_callback_url Callback for pricing on self-serve zones
    # @return [Hash] the updated zone detail
    def update_zone(zone_id, params)
      request(:put, "api/1/zones/#{id}", params).zone
    end

  end

end
