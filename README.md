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

After installation you can do following requests to Instagram:

```ruby
# Search by tag or username:
RubyInstagramScraper.search( "gopro" )

# Get user media nodes:
RubyInstagramScraper.get_user_media_nodes( "gopro" )

# Pass an "id" of node to offset:
RubyInstagramScraper.get_user_media_nodes( "gopro", "1259825963188747360" )

# Get media nodes by tag:
data = RubyInstagramScraper.get_tag_media_nodes( "gopro" )

# Get next portion of nodes of same tag by passing the end cursor:
RubyInstagramScraper.get_tag_media_nodes( "gopro", data['page_info']['end_cursor'] )

# Get media info:
RubyInstagramScraper.get_media( data["nodes"].first["code"] )
RubyInstagramScraper.get_media( "BGGnlHDBV3N" )
```
