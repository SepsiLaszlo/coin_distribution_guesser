require './partable'


decompositions = Partable.new(10).parts
decompositions.each { |dc| puts "#{dc}" }
flat_dc = decompositions.flatten
flat_dc.uniq.sort.each { |n| puts "#{n}: #{flat_dc.count(n)}/#{decompositions.size}" }