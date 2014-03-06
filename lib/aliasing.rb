require 'aliasing/version'
require 'aliasing/history'
require 'aliasing/cli'

module Aliasing
  class << self
    def make_alias(name, command, location)
      existing_alias = verify_uniqueness_of name
      return puts "Error: #{name} is already a bash alias name for #{existing_alias}" if existing_alias

      %x[echo 'alias #{name}="#{command}"' >> #{location}]
    end

    def verify_uniqueness_of(alias_name)
      alias_list = %x[source ~/.profile && source ~/.bash_profile && alias].split "\n"
      aliases = {}
      alias_list.each { |a|
        match = a.match(/(.*)=(.*)/)
        aliases[match[1]] = match[2]
      }
      return aliases[alias_name]
    end
  end
end