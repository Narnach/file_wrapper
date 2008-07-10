require 'test/unit'
require 'file_wrapper'

class FileWrapperTest < Test::Unit::TestCase
  def test_rakefile_is_text
    assert_equal 'text/plain', FileWrapper.get_mime('Rakefile')
  end
end
