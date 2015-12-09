def generateConnectionString()
  "url: postgresql://"+
  ENV["POSTGRES_USER_NAME"].to_s+":"+ENV["POSTGRES_PASSWORD"].to_s+"@"+
  "localhost:5432/open_lmis_prod"
end

def generateModelPath()
  "models_directory:" + ENV["MODELS_PATH"].to_s
end

def generateCubePath()
  ENV["CUBES_PATH"].to_s
end

lines=File.readlines(generateCubePath+'/slicer.ini')
linesWithCredentials=lines.map{|line|
  if line["url: "]
    generateConnectionString
  elsif line["models_directory:"]
    generateModelPath
  else
    line
  end
}


File.open(generateCubePath+'/slicer.ini', "w+") do |f|
  linesWithCredentials.each { |element| f.puts(element) }
end
