def generateConnectionString()
  "url: postgresql://"+
  ENV["POSTGRES_USER_NAME"].to_s+":"+ENV["POSTGRES_PASSWORD"].to_s+"@"+
  "localhost:5432/open_lmis_prod"
end

lines=File.readlines('slicer.ini')
linesWithCredentials=lines.map{|line|
  if line["url: "]
    generateConnectionString
  else
    line
  end
}

File.open("slicer.ini", "w+") do |f|
  linesWithCredentials.each { |element| f.puts(element) }
end
