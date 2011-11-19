# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fancybox-rails"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Mytton"]
  s.date = "2011-06-11"
  s.description = "This gem provides jQuery FancyBox for your Rails 3.1 application."
  s.email = ["self@hecticjeff.net"]
  s.homepage = "https://github.com/hecticjeff/fancybox-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Use FancyBox with Rails 3.1"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
