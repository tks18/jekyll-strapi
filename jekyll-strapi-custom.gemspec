$:.unshift(File.expand_path("../lib", __FILE__))
require "jekyll/strapi/version"

Gem::Specification.new do |spec|
  spec.version = Jekyll::Strapi::VERSION
  spec.homepage = "https://github.com/tks18/jekyll-strapi"
  spec.authors = ["Sudharshan TK"]
  spec.email = ["tksudharshan@gmail.com"]
  spec.files = %W(README.md LICENSE.md) + Dir["lib/**/*"]
  spec.summary = "Strapi.io integration for Jekyll v4.0"
  spec.name = "jekyll-strapi-custom"
  spec.license = "MIT"
  spec.has_rdoc = false
  spec.require_paths = ["lib"]
  spec.description = spec.description = <<-DESC
    A Custom Jekyll plugin for retrieving content from a Strapi API for Latest Jekyll Versions
  DESC

  spec.add_runtime_dependency("jekyll")
  spec.add_runtime_dependency("http", "~> 3.2")
  spec.add_runtime_dependency("json", "~> 2.1")
end
