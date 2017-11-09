#!/usr/bin/env ruby

require "./wrapper.rb"

class Tester
  def self.test
    load "./wrapper.rb"

    text = "THIS IS LINE 1. THIS IS LINE 2. THIS IS LINE 3. THIS IS LINE 4. THIS IS A HUMONGOUS, WAYYYYYYYYYYYYYYYYY TOO BIG LINE." 
    sm_width = 8
    lg_width = 20

    sm_output = Wrapper.wrap(text, sm_width)
    lg_output = Wrapper.wrap(text, lg_width)

    print "\nSMALL TEST\n==========\n"
    print sm_output
    print "\nLARGE TEST\n==========\n"
    print lg_output
  end
end
