А simple module for requests to Instagram without an API key.

### Installation

```sh
$ gem install ruby-instagram-scraper
```

Or with Bundler in your Gemfile.

```ruby
gem 'ruby-instagram-scraper'
```

### Methods

After installation you can make requests to Instagram.

```ruby
# Search by tag or username:
RubyInstagramScraper.search( "gopro" )

# Get user media nodes:
RubyInstagramScraper.get_user_media_nodes( "gopro" )

# Pass an ID of node to offset:
RubyInstagramScraper.get_user_media_nodes( "gopro", "1259825963188747360" )

# Get media nodes by tag:
nodes = RubyInstagramScraper.get_tag_media_nodes( "gopro" )

# Get next portion of nodes of same tag by passing last node "id":
RubyInstagramScraper.get_tag_media_nodes( "gopro", nodes.last["id"] )

# Get media info:
RubyInstagramScraper.get_media( nodes.first["code"] )
RubyInstagramScraper.get_media( "BGGnlHDBV3N" )
```