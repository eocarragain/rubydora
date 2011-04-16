module Rubydora
  autoload :Datastream, "rubydora/datastream"
  autoload :Repository, "rubydora/repository"
  autoload :ResourceIndex, "rubydora/resource_index"
  autoload :RestApiClient, "rubydora/rest_api_client"
  autoload :DigitalObject, "rubydora/digital_object"

  require 'fastercsv'
  require 'restclient'
  require 'nokogiri'

  def self.version
    @version ||= File.read(File.join(File.dirname(__FILE__), '..', 'VERSION')).chomp
  end

  VERSION = self.version

  def self.connect *args
    Repository.new *args
  end

  def self.repository
    nil 
  end

end
