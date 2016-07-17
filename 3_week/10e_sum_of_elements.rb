#Comparison:
#              inject:     2561.1 i/s
#              reduce:     2559.3 i/s - same-ish: difference falls within error
#                 sum:     2334.8 i/s - 1.10x slower
#
require 'benchmark/ips'

collection = [1, 2, 3, 4, 5]

def inject(collection)
collection.inject(:+)
end

def reduce(collection)
collection.reduce(:+)
end

def sum(collection)
collection.reduce {|sum, number| sum += number}
end

if __FILE__ == $PROGRAM_NAME
  Benchmark.ips do |x|
    x.report(:inject) {1000.times{|number|inject(collection)}}
    x.report(:reduce) {1000.times{|number|reduce(collection)}}
    x.report(:sum) {1000.times{|number|sum(collection)}}
    x.compare!
  end
end
