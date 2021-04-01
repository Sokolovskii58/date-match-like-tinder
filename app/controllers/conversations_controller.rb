class ConversationsController < ApplicationController

  
  def create
  end

  private

  def conversation_params
    params.require(:conversation).permit(recipient_id, messages_attributes: [:body, :account_id])
  end

end
