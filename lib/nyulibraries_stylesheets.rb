require "nyulibraries_stylesheets/version"

module NyulibrariesStylesheets
  class << self
    # modified from bootstrap-sass gem
    def load!
      register_compass_extension if compass?
      register_rails_engine if rails?
      configure_sass
    end

    def gem_path
      @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
    end

    def stylesheets_path
      File.join(gem_path, 'app', 'assets', 'stylesheets', 'nyulibraries_stylesheets')
    end

    def compass?
      defined?(::Compass::Frameworks)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      require 'sass'
      ::Sass.load_paths << stylesheets_path
    end

    def register_compass_extension
      ::Compass::Frameworks.register(
          'nyulibraries_stylesheets',
          :version               => NyulibrariesStylesheets::VERSION,
          :path                  => gem_path,
          :stylesheets_directory => stylesheets_path,
      )
    end

    def register_rails_engine
      require 'nyulibraries_stylesheets/engine'
    end
  end
end

NyulibrariesStylesheets.load!
