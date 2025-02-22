lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "missile_emitter/version"

Gem::Specification.new do |spec|
  spec.name          = "missile_emitter"
  spec.version       = MissileEmitter::VERSION
  spec.authors       = ["Jerry Chen"]
  spec.email         = ["code@coding-class.com"]

  spec.summary       = %q{Ruby元编程辅助工具}
  spec.description   = %q{Ruby元编程小工具，让你能在类定义（class definition）级别触发 method_missing 事件，同时不用担心潜在的命名冲突。 }
  spec.homepage      = "https://github.com/coding-class-club/missile_emitter"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/coding-class-club/missile_emitter"
  spec.metadata["changelog_uri"] = "https://github.com/coding-class-club/missile_emitter/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "activesupport"
end
