require 'tiny_tds'
require 'pp'
require 'logger' 


client = TinyTds::Client.new(:username => '3duser', :password => '3d534rch', :host => 'isopoda', :database => "testdenorm0")