require 'rack'

module Gearup
  class Server
    def initialize env, port
      @env = env
      @port = port
    end

    def start
      Rack::Handler::WEBrick.run(app, :Port => @port)
    end

    private

    def app
      env = @env
      Rack::Builder.new do
        use Rack::Deflater
        use GzRewrite

        run env
      end
    end

    class GzRewrite
      def initialize app
        @app = app
      end

      def call env
        if env["PATH_INFO"] =~ /\.gz$/
          env["PATH_INFO"] = env["PATH_INFO"].sub(/\.gz$/, "")
          env["REQUEST_PATH"] = env["REQUEST_PATH"].sub(/\.gz$/, "")
          env["REQUEST_URI"] = env["REQUEST_URI"].sub(/\.gz$/, "")
        end
        @app.call(env)
      end
    end
  end
end

