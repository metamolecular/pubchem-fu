# Copyright (c) 2010 Metamolecular, LLC
# http://metamolecular.com
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

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