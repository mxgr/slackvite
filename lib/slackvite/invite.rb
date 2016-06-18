require "http"

module Slackvite
  class Invite

    attr_accessor :token
    attr_accessor :subdomain
    attr_accessor :email

    def initialize(token, subdomain)
      @token = token
      @subdomain = subdomain
    end

    def sendTo(email)
      @email = email
      puts "Sending invite to #{email}."
      url   = "https://#{@subdomain}.slack.com/api/users.admin.invite"
      options = { :form => { email: @email, token: @token, set_active: true } }
      response = HTTP.auth("Bearer #{@token}").post(url, options)
      if response.code == 200
        puts "Success!"
      else
        puts "Something went wrong."
      end
    end

  end
end