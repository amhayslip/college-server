#load parsers located in the /lib/parsers folder

Dir["#{Rails.root}/lib/parsers/*.rb"].each {|file| load file}