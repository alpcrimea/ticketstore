class Ticket
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :subject, type: String
  field :body, type: String
  field :reference, type: String
  field :url, type: String
end
