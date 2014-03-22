require 'ticket_status'
class TicketEvent
  include Mongoid::Document
  include Mongoid::Timestamps
  field :reply, type: String
  field :from_client, type: Mongoid::Boolean
  belongs_to :owner, class_name: 'User'
  belongs_to :status, class_name: 'TicketStatus`'
  embedded_in :ticket, :inverse_of => :events
  before_save do
    binding.pry
    self.status||=TicketStatus.first
  end
end
