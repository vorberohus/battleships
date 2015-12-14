require 'rubygems'
require 'sinatra/base'

class BS < Sinatra::Base

  Dir[File.dirname(__FILE__) + '/routes/**'].each do |path|
    require path
  end

end
