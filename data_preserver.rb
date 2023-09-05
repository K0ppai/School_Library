class DataPreserver
  def initialize(file_name)
    @file_name = file_name
  end
end

class FileWriter < DataPreserver
  def write(data)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: '  ',
      space_before: ' ',
      space: ' '
    }
    json_data = JSON.generate(data, opts)
    File.write(@file_name, json_data)
  end
end

class FileReader < DataPreserver
  def read
    if File.exist?(@file_name)
      file = File.read(@file_name)
    else
      FileWriter.new(@file_name).write([])
      file = File.read(@file_name)
    end

    JSON.parse(file)
  end
end
