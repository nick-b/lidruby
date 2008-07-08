#!/usr/bin/env ruby1.9
# coding: utf-8 
require 'rubygems'
require 'hpricot'

index = File.open('models/index.xml')

doc = Hpricot(index)

class Model
  def initialize text
    @text = text
  end

  def bigrams
    pos = 0
    while pos <= @text.length - 2 
      yield @text[pos, 2]
      pos += 1
    end
  end

end

m = Model.new("the house is very large")
print m.bigrams

# Dir.glob('models/udhr_*').each do |file|
#   puts file
# end
