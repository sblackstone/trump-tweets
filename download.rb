#!/usr/bin/env ruby 

require 'date'

TRUMP_TWITTER_EPOCH = 2009


def download_year(year)
  system "wget -q -O #{year}.json http://www.trumptwitterarchive.com/data/realdonaldtrump/#{year}.json"
end


TRUMP_TWITTER_EPOCH.upto(Date.today.year - 1) { |year| download_year(year) unless File.exist?("%i.json" % year) }

download_year(Date.today.year)