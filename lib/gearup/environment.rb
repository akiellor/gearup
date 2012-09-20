require 'less'
require 'coffee-script'
require 'haml'
require 'sass'
require 'sprockets'
require 'gearup/context'

module Gearup
  module Environment
    def self.build root
      env = Sprockets::Environment.new root
      env.register_engine '.haml', Tilt::HamlTemplate
      env.register_engine '.sass', Tilt::SassTemplate
      env.append_path "."

      env.context_class.class_eval do
        include Gearup::Context
      end

      env
    end
  end
end

