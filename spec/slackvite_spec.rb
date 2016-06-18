require "slackvite"

describe Slackvite::Configuration.new do
  it "returns the inputs" do
    puts Slackvite::Configuration.new(token: "faketoken", subdomain: "swsc-community")
  end
end
