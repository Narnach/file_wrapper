# FileWrapper wraps the 'file' command line utility.
class FileWrapper
  class << self
    # Extract the mime type from a file.
    def get_mime(filename)
      raise ArgumentError, "Invalid file" unless File.exist? filename and File.file? filename and File.readable? filename
       file_output = `file --mime "#{filename}" 2>&1`.strip
       matches = file_output.match(/.+?:\s+([\/\d\w-]+\/[\/\d\w-]+)/)
       if matches
         return matches[1]
       else
         return nil
       end
    end
  end
end
