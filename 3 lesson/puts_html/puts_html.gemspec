lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "puts_html/version"

Gem::Specification.new do |spec|
  spec.name          = "puts_html"
  spec.version       = PutsHtml::VERSION
  spec.authors       = ["A.Rozputnii"]
  spec.email         = ["a.rozputnii@gmail.com"]

  spec.summary       = "add content to your HTML document"
  spec.description   = "add content to your HTML document"
  spec.homepage      = ""
  spec.licenses    = ['MIT']

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

