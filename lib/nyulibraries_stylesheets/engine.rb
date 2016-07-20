module NyulibrariesStylesheets
  class Engine < ::Rails::Engine
    # So we don't overlap in client namespace
    isolate_namespace NyulibrariesStylesheets

    # Add stylesheets to precompiled assets
    initializer "config.assets.precompile" do |app|
      app.config.assets.paths << root.join('app', 'assets', 'stylesheets').to_s

      app.config.assets.precompile << %r(nyulibraries_stylesheets/*\.scss$)
    end
  end
end
