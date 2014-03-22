json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :email, :subject, :body, :reference, :url
  json.url ticket_url(ticket, format: :json)
end
