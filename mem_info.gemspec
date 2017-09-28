# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mem_info"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["watsonian", "EtienneM"]
  s.date = "2012-09-04"
  s.description = "Ruby wrapper for /proc/meminfo data"
  s.email = "etienne@scalingo.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/mem_info.rb",
    "mem_info.gemspec",
    "spec/mem_info_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/EtienneM/mem_info"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Ruby wrapper for /proc/meminfo data"
  s.license = "MIT"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

