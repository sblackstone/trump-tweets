#!/usr/bin/env ruby 

require 'date'

TRUMP_TWITTER_EPOCH = 2009

TRUMP_TWITTER_EPOCH.upto(Date.today.year) do |year|
  if !File.exist?("%i.json" % year) || year == Date.today.year
    system "wget -O #{year}.json http://www.trumptwitterarchive.com/data/realdonaldtrump/#{year}.json"
  end
end


