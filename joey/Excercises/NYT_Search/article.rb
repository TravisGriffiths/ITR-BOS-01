class Article < ActiveRecord::Base
  attr_accessible :content, :date, :title

  require 'net/http'
  require 'json'

  NYT_API_KEY = "Your Key Here"  #Looks like: 8992fa905de5f7997fef41989bff10d2:7:67591
  BASE_URL = "http://api.nytimes.com/svc/search/v1/article"

  def self.search(args)
  	query_uri = URI("#{BASE_URL}?query=#{args[:terms].join('+')}&offset=#{args[:page]}&api-key=#{NYT_API_KEY}")
  	results = Net::HTTP.get(query_uri)
  	JSON.parse(results)
  end

end