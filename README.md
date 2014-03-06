### Aliasing

A little test project to get familiar with creating Ruby CLIs using Thor. It exists to facilitate making aliases for commonly used bash commands.

#### Installation

    $ gem install aliasing

#### Usage

**Find most frequently used bash commands**

    $ aliasing most_frequent {history file} {num entries}

    -> num entries defaults to 10

Example

    $ aliasing most_frequent ~/.bash_history 15

will return most frequently used commands from the current users .bash_history file

**Make an alias**

(Right, because its so *hard* to do by yourself...)

    $ aliasing make_alias {alias name} {command} {location = ~/.bash_profile}

    -> location defaults to ~/.bash_profile unless otherwise specified

Example

    $ aliasing make_alias ll "ls -l"

Aliasing will refuse to create an alias for one that an alias name that already exists.

NB: be sure to use quotes for multi-word commands

### Todos (if this project actually had legs)

- document code
- write rspecs
- write cucumber tests for CLI
- more tools for alias management
  - removing an alias by name
  - making suggestions (eg. "bundle exec rake db:migrate" -> "rmigrate", "ssh -i ~/.ssh/mykey.pem" -> "sshmykey")

#### Version History

`0.0.1` - Added commands to find the most frequently used bash commands and create aliases in a target file.

#### License

MIT
