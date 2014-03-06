module Aliasing
  class History

    attr_accessor :entries, :by_frequency

    def initialize(entries)
      @entries = entries
      @by_frequency = {}
      sort_by_frequency
    end

    def sort_by_frequency
      entries_with_freqency = {}
      
      @entries.each { |e| 
        entries_with_freqency[e] ||= 0
        entries_with_freqency[e] += 1
      }

      @by_frequency = entries_with_freqency.sort_by{|k,v| v}.reverse
    end

    def most_frequent(num)
      Hash[@by_frequency[0..num-1]]
    end

  end
end