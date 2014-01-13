require "cowspeak/version"

module Cowspeak
  def self.say(msg)
    exec "cowsay #{msg} | lolcat & say -v Cellos #{msg}"
  end
end
