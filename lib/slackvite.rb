require "slackvite/configuration"

module Slackvite

  attr_reader :config

  def initialize
    @config = Slackvite::Configuration.new
    yield config
  end

  def invite(email)
    # @email = email
    # url   = "https://#{@subdomain}.slack.com/api/users.admin.invite"
    # options = { :form => { email: email, token: token, set_active: true } }
    # response = HTTP.auth("Bearer #{token}").post(url, options)
    # puts response.inspect
  end

end
