require 'rspec-expectations'
require 'page-object'
require 'page-object/page_factory'
require 'fig_newton'
require_relative 'peerius/peerius_helper'
require 'mailinator/spec'
require 'mailinator/steps'

World(Mailinator::Spec::Matchers)
World(Mailinator::Spec::Helpers)
World(PageObject::PageFactory)
