$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'test/unit'
require 'file_wrapper'
require 'tempfile'

class FileWrapperTest < Test::Unit::TestCase
  def test_rakefile_is_text
    assert_equal 'text/plain', FileWrapper.get_mime('Rakefile')
  end

  def test_filenames_with_spaces
    Tempfile.open('text file with spaces.txt') do |f|
      File.open(f.path,'w') do |fp|
        fp.puts 'test'
      end
      assert_equal 'text/plain', FileWrapper.get_mime(f.path)
    end
  end
end
