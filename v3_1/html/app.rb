#!/usr/bin/env ruby
require 'slim'
Slim::Engine.set_options pretty: true, sort_attrs: false

# crea raccourci @ pour attr role
Slim::Engine.set_options shortcut: { '@' => {attr: 'role'}, '#' => {attr: 'id'}, '.' => {attr: 'class'} }
## compil slim
# src
srcfile = File.open("template.slim", "rb").read
# compilation dans var outFile
outFile = Slim::Template.new {srcfile}

# Write the HTML output
fout = File.open("render-v3_1.html", "w")
fout.puts outFile.render
fout.close
# open render file in browser
system("explorer render-v3_1.html")