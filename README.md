# broadstreet-ruby

This is a Ruby wrapper for the Broadstreet V1 API.  It provides convenient
access to methods that allow the creation of networks, advertisers, zones, etc.

## Installation

This gem is available via RubyGems, so a simple:

``` bash
$ gem install broadstreet
```

will get you going (or `gem 'broadstreet'` if you're using a Gemfile).

## Usage

First, grab a `Broadstreet::Client` object, and give it an API key:

``` ruby
client = Broadstreet::Client.new '123jf9fj1jf9'
```

Then you're good to go!  The objects returned to you are `Hashie::Mash`, so
they're easy to work with in dot notation like so:

``` ruby
# List all networks available to the authenticating user
client.list_networks.each do |network|
  puts network.name
end
```

## Now What?

Now that you're set up to make calls, take a look around the documentation

## Issues?

Want a new endpoint, or some more detail?  Will do!

Use the GitHub [issue tracker][broadstreet-issues]!

## License

See LICENSE
