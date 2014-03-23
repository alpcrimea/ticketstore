class HomeController < ApplicationController
  def index
    @ticket=Ticket.new
    @redirect="view_ticket_path"
  end
  def view_ticket
    @params=params
    @ticket=Ticket.where(url:params[:url]).first
    @event=TicketEvent.new(from_client:true)
  end

  def reply
    @ticket=Ticket.where(url:params[:url]).first
    @ticket.events<<TicketEvent.new(from_client:true,reply:params['ticket_event']['reply'])
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to view_ticket_path, notice: 'Ticket was successfully updated. ' }
      else
        format.html { render action: 'index' }
      end
    end
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def home_params
    params.require(:ticket_event).permit(:reply)
  end
end
