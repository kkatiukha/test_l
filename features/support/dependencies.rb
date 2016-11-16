require "rubygems"
require "pry"
require "yaml"
require "rspec"
require "cucumber"
require "watir-webdriver"
require "page-object"
require "page-object/page_factory"
require "allure-cucumber"
require "data_magic"
require "fig_newton"
require "rest-client"
require "json"
require "sinatra"
require "rack/test"
require "rspec/expectations"
require "watir-scroll"
require 'ruby-duration'
require 'chronic_duration'
require 'nokogiri'
require 'open-uri'
require 'active_support/time'

# DATA    ||= DataMagic.load("data.yml")

include AllureCucumber::DSL

AllureCucumber.configure do |c|
  c.output_dir = "output/allure"
  c.issue_prefix    = '@DEFECT:'
  c.tms_prefix      = '@JIRA:'
  c.severity_prefix = '@SEVERITY:'
end

PageObject.javascript_framework = :jquery

def app; Sinatra::Application; end

World(Rack::Test::Methods)
