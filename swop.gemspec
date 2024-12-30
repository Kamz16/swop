# frozen_string_literal: true

require_relative "lib/swop/version"

Gem::Specification.new do |spec|
  spec.name = "swop"
  spec.version = Swop::VERSION
  spec.authors = ["Kamil Wodzinski", "Harrison James"]
  spec.email = ["kamilw175@gmail.com", "harissoooon@outlook.com"]

  spec.summary = "Theme's for the rails_admin gem"
  spec.homepage = "https://github.com/kamz16/swop"
  spec.required_ruby_version = ">= 3.0.0"

  spec.license = "Apache-2.0" # SPDX identifier for Apache License 2.0

  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      f == File.basename(__FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.files << "LICENSE"

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", [">= 6.0", "< 8"]
  spec.add_dependency "rails_admin", ">= 2.0"
  spec.add_development_dependency "bundler", ">= 1.0"
end
