#!/usr/bin/env ruby1.9
# coding: utf-8 
#

class UDHRSampleParser
  require 'zlib'
  modelfile = 'models/full_all.txt.gz'
  Zlib::GzipReader.open(modelfile) do |gzip| 
    line = gzip.read
    if line =~ /.*qq.*/
      puts line
    end
  end
end

UDHRSampleParser.new
