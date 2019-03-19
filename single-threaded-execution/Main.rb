#!/usr/bin/env ruby

require './UserThread'

puts "Testing Gate, hit CTRL+C to exit."

gate = Gate.new()
threads = { Alice: :Alask, Bobby: :Brazil, Chris: :Canada }.map { |k, v|
  UserThread.new(gate, k, v)
}
threads.each { |t|
  t.join()
}
