module Slackvite
  class Configuration

    attr_accessor :token
    attr_accessor :subdomain

    def initialize
      @options = { :headers => { :accept => "application/json" } }
    end

    def self.portray(food)
      if food == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end

  end
end
