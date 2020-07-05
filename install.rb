require 'open-uri'
@path = 'https://fonts.google.com/download?family=Roboto+Mono'

fileName = "roboto-mono.zip"

open(fileName, 'rwa+b') do |output|
  open(@path) do |data|
    output.write(data.read)
  end
end

require "fileutils"
FileUtils.mkdir("Roboto_Mono")

require 'zip'

dest = 'Roboto_Mono'

Zip::File.open('roboto-mono.zip') do |zip|
  zip.each do |entry|
    p entry.name
    zip.extract(entry, dest + entry.name) { true }
  end
end

require "fileutils"
FileUtils.mkdir("/usr/share/fonts/Roboto_Mono")

require "fileutils"

Dir.glob('*.ttf').each do |fontname|
FileUtils.mv("Roboto_Mono/static/" + fontname, "/usr/share/fonts/Roboto_Mono/" + fontname)

reqiure 'fileutils'
FileUtils.rm_rf("Roboto_Mono")

require 'fileutils'
FileUtils.rm("roboto-mono.zip")
