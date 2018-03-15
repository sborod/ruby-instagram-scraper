require "minitest/autorun"
require "ruby-instagram-scraper"

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
      RubyInstagramScraper.get_tag_media_nodes( "academgorodok" ).must_be_instance_of Array
    end
  end
  
  describe "when request a media" do
    it "must has equal code in field" do
      RubyInstagramScraper.get_media( "vKQeMNu7H1" )["code"].must_equal "vKQeMNu7H1"
    end
  end

  describe "when request user media comments" do
    it "must be an array" do
      RubyInstagramScraper.get_media_comments( "6zVfmqAMkD", 2 ).must_be_instance_of Array
    end
  end

  describe "when request user media comments before specified comment_id value" do
    it "must be an array" do
      RubyInstagramScraper.get_media_comments( "6zVfmqAMkD", 2, "17851999804000050" ).must_be_instance_of Array
    end
  end

  describe "when request location by id" do
    it "users must be an array" do
        RubyInstagramScraper.get_location(2327407)["name"].must_be_instance_of String
    end
  end

end
