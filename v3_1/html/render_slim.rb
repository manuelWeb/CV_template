require 'rubygems'
require 'sinatra'
require 'slim'
# crea raccourci @ pour attr role
Slim::Engine.set_options shortcut: {'@' => {attr: 'role'}, '#' => {attr: 'id'}, '.' => {attr: 'class'}}
# Indent html for pretty debugging and do not sort attributes
Slim::Engine.set_options pretty: true, sort_attrs: false
# helper exe subtemplate
module Helpers
  def include_slim(name, options = {}, &block)
    Slim::Template.new("#{name}.slim", options).render(self, &block)
  end
end

get '/' do
  slim :index
end

__END__