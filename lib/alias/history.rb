module Alias
  class History

    def initialize
      @entries = acquire
      sort_by_frequency
    end

    def acquire
      `history`.split "\n"
    end

    def sort_by_frequency
      puts @entries
    end

  end
end