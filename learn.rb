require 'nokogiri'
require 'httparty'

base_url = 'http://ruby-doc.org/core-2.5.3/'
response = HTTParty.get(base_url)

system("open '#{base_url}#{Nokogiri::HTML(response).css('#method-index p a').to_a.sample['href']}'")
