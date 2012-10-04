require "heroku/command"
require "heroku/command/base"

class Heroku::Command::Ps

  # ps:top
  #
  # List runtime information about running processes
  def top
    validate_arguments!
    display("It works!")
  end

  alias_command "top", "ps:top"
end

class Heroku::Client
  def ps_top(app_name)
    json_decode(get("apps/#{app}/ps/top"))
  end
end
