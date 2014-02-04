begin
  gem "bundler"
rescue LoadError
  system("gem install bundler")
  Gem.clear_paths
end

require 'bundler/cli'
Bundler::CLI.start([:install])

require 'sass'

Sass.load_paths << File.dirname(__FILE__ + '/src/main/resources/sass')
compiledSass = Sass.compile_file(File.dirname(__FILE__) + '/src/main/resources/sass/app.scss')
File.write(File.dirname(__FILE__) + '/src/main/resources/sass/app.css', compiledSass)

