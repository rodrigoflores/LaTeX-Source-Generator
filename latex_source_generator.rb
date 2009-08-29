#!/usr/bin/ruby -w


=begin
  * Name: latex_source_generator.rb
  * Generates LaTeX files with headers, titlepage and an empty document 
  * Author: Rodrigo Flores (mail@rodrigoflores.org)
  * Date: 8/29/2009 
  * License: MIT License 

Copyright (c) 2009, Rodrigo Flores <mail@rodrigoflores.org>

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.


=end

$stderr.puts "Generating LaTeX file..."



#You can change it for anything
document_class = "article"
document_options = %w[a4paper 12pt titlepage]

printf "\\documentclass[%s]{%s}\n", document_options.join(","), document_class

non_simple_packages = [%w[T1 fontenc], %w[brazil babel], %w[ utf8x inputenc ] ]
simple_packages = %w[ graphics times ucs url]

non_simple_packages.each { |package| printf "\\usepackage[%s]{%s}\n",package[0],package[1] }

simple_packages.each { |package| printf "\\usepackage{#{package}}\n"}

3.times { puts }

title = "Put your title here"
authors = [ "Rodrigo L. M. Flores" ]
printf "\\title{#{title}}\n"
2.times { puts }
printf "\\author{#{authors.join(' \and\n')}}\n"
2.times { puts }
date = '\today'
printf "\\date{#{date}}\n"
3.times { puts }

printf "\\begin{document}\n"

2.times { puts }

puts "\\maketitle"

10.times { puts } 

puts "\\end{document}"



