#!/usr/bin/env ruby

students = {}
ARGF.each do |str|

    id, score = str.split('-').map(&:to_i)

    if not students.has_key?(id) or students[id] < score
        students[id] = score
    end
end

students.sort_by {|k, v| v}.reverse.each do |k, v|
    puts "#{k}-#{v}"
end
