module Broadstreet

  module CampaignMethods

    # List campaigns for a given advertiser
    #
    # @param [Fixnum] advertiser_id: The ID of the advertiser to retrieve campaigns for
    # @return [Array<Hash>] details of the campaigns for the advertiser
    def list_campaigns(advertiser_id)
      request(:get, "api/1/advertiers/#{advertiser_id}/campaigns").campaigns
    end

    # Get the data for a given campaign
    #
    # @param [Fixnum] campaign_id: The ID of the campaign to retrieve
    # @return [Hash] the detail for the given campaign
    def get_campaign(campaign_id)
      request(:get, "api/1/campaigns/#{campaign_id}").campaign
    end

    # Delete a given campaign
    #
    # @param [Fixnum] campaign_id: The ID of the campaign to delete
    # @return nil
    def delete_campaign(campaign_id)
      request :delete, "api/1/campaigns/#{campaign_id}"
      nil
    end

    # Update a campaign
    #
    # @param [Fixnum] campaign_id: The ID of the campaign to update
    # @param [Hash] params: The data to update the campaign with
    # @option params [String] name: The name of the campaign
    # @return [Hash] the detail of the updated campaign
    def update_campaign(campaign_id, params)
      request(:put, "api/1/campaigns/#{camapign_id}", params).campaign
    end

    # Create a campaign
    #
    # @param [Fixnum] advertiser_id: The ID of the advertiser to create the campaign under
    # @param [Hash] params: The data to create the campaign with
    # @option params [String] name: The name of the campaign
    # @return [Hash] the detail of the new campaign
    def create_campaign(advertiser_id, params)
      request(:post, "api/1/advertisers/#{advertiser_id}/campaigns", params).campaign
    end

  end

end
