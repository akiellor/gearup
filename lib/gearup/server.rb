require 'rack'

module Gearup
  class Server
    def initialize env, port
      @env = env
      @port = port
    end

    def start
      Rack::Handler::WEBrick.run(@env, :Port => @port)
    end
  end
end

