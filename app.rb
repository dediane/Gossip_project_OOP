require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'view'
require 'gossip'
require 'controller'

Router.new.perform