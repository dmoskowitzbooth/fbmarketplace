class MsgChainsController < ApplicationController
  def index
    matching_msg_chains = MsgChain.all

    @list_of_msg_chains = matching_msg_chains.order({ :created_at => :desc })

    render({ :template => "msg_chains/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_msg_chains = MsgChain.where({ :id => the_id })

    @the_msg_chain = matching_msg_chains.at(0)

    render({ :template => "msg_chains/show" })
  end

  def create
    the_msg_chain = MsgChain.new
    the_msg_chain.sender_id = params.fetch("query_sender_id")
    the_msg_chain.receiver_id = params.fetch("query_receiver_id")
    the_msg_chain.subject = params.fetch("query_subject")
    the_msg_chain.item_id = params.fetch("query_item_id")
    the_msg_chain.messages_count = params.fetch("query_messages_count")

    if the_msg_chain.valid?
      the_msg_chain.save
      redirect_to("/msg_chains", { :notice => "Msg chain created successfully." })
    else
      redirect_to("/msg_chains", { :alert => the_msg_chain.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_msg_chain = MsgChain.where({ :id => the_id }).at(0)

    the_msg_chain.sender_id = params.fetch("query_sender_id")
    the_msg_chain.receiver_id = params.fetch("query_receiver_id")
    the_msg_chain.subject = params.fetch("query_subject")
    the_msg_chain.item_id = params.fetch("query_item_id")
    the_msg_chain.messages_count = params.fetch("query_messages_count")

    if the_msg_chain.valid?
      the_msg_chain.save
      redirect_to("/msg_chains/#{the_msg_chain.id}", { :notice => "Msg chain updated successfully."} )
    else
      redirect_to("/msg_chains/#{the_msg_chain.id}", { :alert => the_msg_chain.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_msg_chain = MsgChain.where({ :id => the_id }).at(0)

    the_msg_chain.destroy

    redirect_to("/msg_chains", { :notice => "Msg chain deleted successfully."} )
  end
end
