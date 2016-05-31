require "minitest/autorun"
require "ruby_instagram_scraper"

describe RubyInstagramScraper do

  describe "when search" do
    it "users must be an array" do
      RubyInstagramScraper.search( "borodanov" )["users"].must_be_instance_of Array
    end
  end

  describe "when request user media nodes" do
    it "must be an array" do
      RubyInstagramScraper.get_user_media_nodes( "borodanov" ).must_be_instance_of Array
    end
  end
  
  describe "when request tag media nodes" do
    it "must be an array" do
      RubyInstagramScraper.get_tag_media_nodes( "borodanov" ).must_be_instance_of Array
    end
  end

end