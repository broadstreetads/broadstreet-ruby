require 'broadstreet/advertiser_methods'
require 'broadstreet/campaign_methods'
require 'broadstreet/network_methods'
require 'broadstreet/user_methods'
require 'broadstreet/zone_methods'
require 'hashie'
require 'faraday'
require 'json'

module Broadstreet

  class Client

    include AdvertiserMethods
    include CampaignMethods
    include NetworkMethods
    include UserMethods
    include ZoneMethods

    # Instantiate a new client
    #
    # @param [String] access_token: Broadstreet Access Token (optional)
    def initialize(access_token = nil)
      @access_token = access_token
    end

    private

    def request(method, path, params = {})
      params[:access_token] = @access_token
      response = connection.send method, path, params
      if method == :delete
        nil
      else
        Hashie::Mash.new JSON.parse response.body
      end
    end

    def connection
      @connection ||= Faraday.new(:url => 'https://api.broadstreetads.com')
    end

  end

end
