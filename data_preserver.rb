class DataPreserver
  def initialize(file_name)
    @file_name = file_name
  end
end

class FileWriter < DataPreserver
  def initialize(file_name)
    super(file_name)
  end
  
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
  def initialize(file_name)
    super(file_name)
  end

  def read
    file = File.read(@file_name) if File.exist?(@file_name)
    JSON.parse(file)
  end
end