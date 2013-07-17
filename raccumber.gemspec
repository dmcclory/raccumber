require 'rake'

Gem::Specification.new do |s|
  s.name = "raccumber"
  s.version = "0.0.1"
  s.author = "Dan McClory"
  s.email = "danmcclory@gmail.com"
  s.homepage = "https://github.com/dmcclory/raccumber"

  s.summary = "racc-grammar & parser for Gherkin"


  s.files = FileList[ 'lib/**/*.rb',
              'lib/**/*.racc',
              'features/*',
              'bin/*']
  s.executables = "raccumber"

  s.require_paths = ["lib"]

  s.add_runtime_dependency "boom", "~> 0.3"
end
