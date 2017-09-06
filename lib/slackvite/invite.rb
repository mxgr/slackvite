require "http"
require "json"

module Slackvite
  class Invite

    attr_accessor :token
    attr_accessor :subdomain
    attr_accessor :email

    def initialize(token, subdomain)
      @token = token
      @subdomain = subdomain
    end

    def send_invite(email)
      @email = email
      url   = "https://#{@subdomain}.slack.com/api/users.admin.invite"
      options = { form: { email: @email, token: @token, set_active: true } }
      response = HTTP.auth("Bearer #{@token}").post(url, options)
      response = JSON.parse(response.body)
      puts response
      if response["ok"] == true
        true
      else
        false
      end
    end

  end
end