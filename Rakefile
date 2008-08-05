require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require "rake/gempackagetask"

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the file_wrapper plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the file_wrapper plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'FileWrapper'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  # Parse gemspec using the github safety level.
  data = File.read('file_wrapper.gemspec')
  spec = nil
  Thread.new { spec = eval("$SAFE = 3\n%s" % data)}.join

  # Create the gem tasks
  Rake::GemPackageTask.new(spec) do |package|
    package.gem_spec = spec
  end
rescue Exception => e
  printf "WARNING: Error caught (%s): %s\n", e.class.name, e.message
end

desc 'Package and install the gem for the current version'
task :install => :gem do
  system "sudo gem install -l pkg/file_wrapper-%s.gem" % spec.version
end
