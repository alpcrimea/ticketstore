require 'spec_helper'
describe Ticket do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @ticket=Ticket.new(name:'Test user', email:'test@example.com', subject:'Test subject', body:'Hello support') 
  end
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:subject) }
  it { should validate_presence_of(:body) }
end
