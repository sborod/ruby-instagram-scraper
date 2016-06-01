require 'open-uri'
require 'json'

module RubyInstagramScraper

  def self.search ( query )
    url = "https://www.instagram.com/web/search/topsearch/"
    params = "?query=#{ query }"

    JSON.parse( open( url + params ).read )
  end

  def self.get_user_media_nodes ( username, max_id = nil )
    url = "https://www.instagram.com/#{ username }/?__a=1"
    params = ""
    params = "&max_id=#{ max_id }" if max_id

    JSON.parse( open( url + params ).read )["user"]["media"]["nodes"]
  end

  def self.get_tag_media_nodes ( tag, max_id = nil )
    url = "https://www.instagram.com/explore/tags/#{ tag }/?__a=1"
    params = ""
    params = "&max_id=#{ max_id }" if max_id

    JSON.parse( open( url + params ).read )["tag"]["media"]["nodes"]
  end

  def self.get_media ( code )
    url = "https://www.instagram.com/p/#{ code }/?__a=1"
    params = ""

    JSON.parse( open( url + params ).read )["media"]
  end
  
end