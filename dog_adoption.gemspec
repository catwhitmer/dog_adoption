
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dog_adoption/version"

Gem::Specification.new do |spec|
  spec.name          = "dog_adoption"
  spec.version       = DogAdoption::VERSION
  spec.authors       = ["'Cathrin Whitmer'"]
  spec.email         = ["'catwhitmer@gmail.com'"]

  spec.summary       = %q{A gem that scrapes dogs available for adoption form the Best Friends Animal Society webpage.}
  spec.description   = %q{This CLI allows users to see all of the current dogs available for adoption at Best Friends Animal Society. It gives you a list of dogs and lets you see more information about each dog, includingname, age, description, and other useful information.}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/catwhitmer/dog_adoption."
    spec.metadata["changelog_uri"] = "https://github.com/catwhitmer/dog_adoption."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'colorize'
end
