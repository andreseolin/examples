# this example use two gems (hpricot and open-uri)
# who do install gems:
#	gem install hpricot
#
# the gem open-uri is default, case you want install, use this command: 
#       gem install open-uri

require 'hpricot'
require 'open-uri'

twitts = Hpricot(open('http://www.twitter.com/maiconkeller'))
items = twitts / ".hentry .entry-content"
items.each do |item|
  puts item.inner_text
end
