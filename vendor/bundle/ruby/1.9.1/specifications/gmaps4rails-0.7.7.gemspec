# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gmaps4rails"
  s.version = "0.7.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benjamin Roth", "David Ruyer"]
  s.date = "2011-04-23"
  s.description = "Enables easy display of items (taken from a Rails 3 model) on a Google Map. Uses Javascript API V3. Provides a helper and much configuration."
  s.email = "benjamin.roth@peachyweb.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.rdoc"]
  s.files = ["LICENSE.txt", "README.rdoc"]
  s.homepage = "http://github.com/apneadiving/Google-Maps-for-Rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Enables easy display of items (taken from a Rails 3 model) on a Google Map. Uses Javascript API V3."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<crack>, [">= 0"])
    else
      s.add_dependency(%q<crack>, [">= 0"])
    end
  else
    s.add_dependency(%q<crack>, [">= 0"])
  end
end
