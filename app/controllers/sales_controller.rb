class SalesController < ApplicationController
  def index
    matching_sales = Sale.all

    @list_of_sales = matching_sales.order({ :created_at => :desc })

    render({ :template => "sales/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sales = Sale.where({ :id => the_id })

    @the_sale = matching_sales.at(0)

    render({ :template => "sales/show" })
  end

  def create
    the_sale = Sale.new
    the_sale.item_id = params.fetch("query_item_id")
    the_sale.buyer_id = params.fetch("query_buyer_id")
    the_sale.seller_id = params.fetch("query_seller_id")
    the_sale.accepted_offer_id = params.fetch("query_accepted_offer_id")
    the_sale.status = params.fetch("query_status")
    the_sale.final_price = params.fetch("query_final_price")
    the_sale.pu_location = params.fetch("query_pu_location")
    the_sale.pu_date = params.fetch("query_pu_date")

    if the_sale.valid?
      the_sale.save
      redirect_to("/sales", { :notice => "Sale created successfully." })
    else
      redirect_to("/sales", { :alert => the_sale.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_sale = Sale.where({ :id => the_id }).at(0)

    the_sale.item_id = params.fetch("query_item_id")
    the_sale.buyer_id = params.fetch("query_buyer_id")
    the_sale.seller_id = params.fetch("query_seller_id")
    the_sale.accepted_offer_id = params.fetch("query_accepted_offer_id")
    the_sale.status = params.fetch("query_status")
    the_sale.final_price = params.fetch("query_final_price")
    the_sale.pu_location = params.fetch("query_pu_location")
    the_sale.pu_date = params.fetch("query_pu_date")

    if the_sale.valid?
      the_sale.save
      redirect_to("/sales/#{the_sale.id}", { :notice => "Sale updated successfully."} )
    else
      redirect_to("/sales/#{the_sale.id}", { :alert => the_sale.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_sale = Sale.where({ :id => the_id }).at(0)

    the_sale.destroy

    redirect_to("/sales", { :notice => "Sale deleted successfully."} )
  end
end
