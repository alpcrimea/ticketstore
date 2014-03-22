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
end
