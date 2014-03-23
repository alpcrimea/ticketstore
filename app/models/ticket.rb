require 'appcode'
class Ticket
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :subject, type: String
  field :body, type: String
  field :reference, type: String
  field :url, type: String
  belongs_to :department
  embeds_many :events, class_name: 'TicketEvent', cascade_callbacks: true
  validates_presence_of :name,:email,:subject,:body

  # Setting unique reference into ticket
  before_save do
    self.reference||=appcode
    self.url||=appcode(10,6)
  end
end
