require "slackvite"

describe "slackvite" do
  let(:invite) { Slackvite::Invite.new('faketoken', 'swsc-community') }
  it "creates an invite" do
    expect(invite.token).to eql('faketoken')
  end
end
