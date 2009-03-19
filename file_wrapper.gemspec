Gem::Specification.new do |s|
  # Project
  s.name         = 'file_wrapper'
  s.summary      = "FileWrapper wraps the command line utility 'file' to detect the mime-type of a file."
  s.description  = "FileWrapper is a RubyGem and Rails plugin which wraps the command line utility 'file' to detect the mime-type of a file."
  s.version      = '0.4.1'
  s.date         = '2009-01-14'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Wes Oldenbeuving"]
  s.email        = "narnach@gmail.com"
  s.homepage     = "http://www.github.com/Narnach/file_wrapper"
  
  # Files
  s.require_path = "lib"
  s.files        = ['file_wrapper.gemspec', 'MIT-LICENSE', 'README.rdoc', 'Rakefile', 'init.rb', 'lib/file_wrapper.rb', 'test/file_wrapper_test.rb']
  s.test_files   = ['test/file_wrapper_test.rb']

  # rdoc
  s.has_rdoc         = true
  s.extra_rdoc_files = %w[ README.rdoc MIT-LICENSE]
  s.rdoc_options << '--inline-source' << '--line-numbers' << '--main' << 'README.rdoc'

  # Requirements
  s.required_ruby_version = ">= 1.8.0"
end
