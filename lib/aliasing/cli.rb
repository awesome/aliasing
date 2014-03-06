require 'thor'

module Aliasing
  class CLI < Thor
    desc "most_frequent", "Most frequently used bash commands"
    def most_frequent(history_file, num = 10)
      f = File.new(history_file)
      history = f.read.split "\n"
      History.new(history).most_frequent(num.to_i).each{ |k, v|
        puts "'#{k}' - #{v}"
      }
    end

    desc "make_alias", "Make and export an alias to ~/.bash_profile"
    def make_alias(name, command)
      %x[echo 'alias #{name}="#{command}"' >> hello]
    end
  end
end