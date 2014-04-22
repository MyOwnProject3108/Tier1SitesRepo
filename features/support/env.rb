require 'rspec-expectations'
require 'page-object'
require 'page-object/page_factory'
require 'fig_newton'
require_relative 'peerius/peerius_helper'
World(PageObject::PageFactory)

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end
