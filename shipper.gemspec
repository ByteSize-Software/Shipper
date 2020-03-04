require_relative 'lib/shipper/version'

Gem::Specification.new do |spec|
  spec.name          = "shipper"
  spec.version       = Shipper::VERSION
  spec.authors       = ["c-moyer"]
  spec.email         = ["cannonmoyer@yahoo.com"]

  spec.summary       = %q{Test sumaary}
  spec.description   = %q{test description}
  spec.homepage      = "https://www.treadmilldoctor.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["https"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.treadmilldoctor.com"
  spec.metadata["changelog_uri"] = "https://www.treadmilldoctor.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "active_utils"
  spec.add_dependency "measured"
  spec.add_development_dependency "rspec"
end
