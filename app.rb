require 'sinatra'
require 'sinatra/reloader'
require 'rss'
require 'open-uri'

get '/' do
  url = 'https://www.aljazeera.com/xml/rss/all.xml'
  open(url) do |rss|
    @feed = RSS::Parser.parse(rss)
  end
  erb :index
end