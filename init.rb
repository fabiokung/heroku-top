require "heroku/command/base"

class Heroku::Command::Ps < Heroku::Command::Base

  # ps:top
  #
  # Runtime information about dynos
  #
  def top
    validate_arguments!
    puts "Hello!"
  end

  alias_command "top", "ps:top"

end
