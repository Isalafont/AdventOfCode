#!/usr/bin/env ruby

file_path = File.expand_path("../day-01-input.txt", __FILE__)
input     = File.read(file_path).split("\n\n")

quantities = input.each.map do |calorie|
  calorie.each_line.map(&:to_i).sum
end

puts quantities.max(3).sum
