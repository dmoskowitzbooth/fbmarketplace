class OffersController < ApplicationController
  def index
    matching_offers = Offer.all

    @list_of_offers = matching_offers.order({ :created_at => :desc })

    render({ :template => "offers/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_offers = Offer.where({ :id => the_id })

    @the_offer = matching_offers.at(0)

    render({ :template => "offers/show" })
  end

  def create
    the_offer = Offer.new
    the_offer.item_id = params.fetch("query_item_id")
    the_offer.offer = params.fetch("query_offer")
    the_offer.notes = params.fetch("query_notes")
    the_offer.submitter_id = params.fetch("query_submitter_id")
    the_offer.status = params.fetch("query_status")

    if the_offer.valid?
      the_offer.save
      redirect_to("/offers", { :notice => "Offer created successfully." })
    else
      redirect_to("/offers", { :alert => the_offer.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_offer = Offer.where({ :id => the_id }).at(0)

    the_offer.item_id = params.fetch("query_item_id")
    the_offer.offer = params.fetch("query_offer")
    the_offer.notes = params.fetch("query_notes")
    the_offer.submitter_id = params.fetch("query_submitter_id")
    the_offer.status = params.fetch("query_status")

    if the_offer.valid?
      the_offer.save
      redirect_to("/offers/#{the_offer.id}", { :notice => "Offer updated successfully."} )
    else
      redirect_to("/offers/#{the_offer.id}", { :alert => the_offer.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_offer = Offer.where({ :id => the_id }).at(0)

    the_offer.destroy

    redirect_to("/offers", { :notice => "Offer deleted successfully."} )
  end
end
