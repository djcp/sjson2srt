module FileHelpers
  def content_from_example_file(file_name)
    File.read("./spec/support/example_files/#{file_name}")
  end
end
