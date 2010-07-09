require 'rubygems'
require 'rake'
require 'fileutils'

task :daily do |t|
  FileUtils.mkdir_p 'daily'
  `cd daily && wget --mirror --accept "*.sdf.gz,killed-SIDs,killed-CIDs" --wait 1 ftp://ftp.ncbi.nlm.nih.gov/pubchem/Compound/Daily/`
  `cd daily && wget --mirror --accept "*.sdf.gz,killed-SIDs,killed-CIDs" --wait 1 ftp://ftp.ncbi.nlm.nih.gov/pubchem/Substance/Daily/`
end

task :full do |t|
  FileUtils.mkdir_p 'full'
  `cd full && wget --mirror --accept \"*.sdf.gz\" ftp://ftp.ncbi.nlm.nih.gov/pubchem/Substance/CURRENT-Full/SDF/`
  `cd full && wget --mirror --accept \"*.sdf.gz\" ftp://ftp.ncbi.nlm.nih.gov/pubchem/Compound/CURRENT-Full/SDF/`
end