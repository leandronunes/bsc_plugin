require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the bsc_plugin plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the bsc_plugin plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'BscPlugin'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake/packagetask'
require File.join(File.dirname(__FILE__), 'lib', 'bsc')

Rake::PackageTask.new(BSC::PROJECT, BSC::VERSION) do |p|
  p.need_tar_gz = true
  p.package_files.include('*')

  p.package_files.exclude('**/.svn')
  p.package_files.exclude('pkg')

end

# TODO: add documentation generation
task :dist => [ :clobber_package, :test, :makemo, :package ] do
  puts "Finished generating package"
end

# vim: ft=ruby
