Rails.application.routes.draw do
  get 'dashboard/index'
  get 'home/index'
  # Routes for the Sale resource:
  resources :items

  # CREATE
  post("/insert_sale", { :controller => "sales", :action => "create" })
          
  # READ
  get("/sales", { :controller => "sales", :action => "index" })
  
  get("/sales/:path_id", { :controller => "sales", :action => "show" })
  
  # UPDATE
  
  post("/modify_sale/:path_id", { :controller => "sales", :action => "update" })
  
  # DELETE
  get("/delete_sale/:path_id", { :controller => "sales", :action => "destroy" })

  #------------------------------

  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Msg chain resource:

  # CREATE
  post("/insert_msg_chain", { :controller => "msg_chains", :action => "create" })
          
  # READ
  get("/msg_chains", { :controller => "msg_chains", :action => "index" })
  
  get("/msg_chains/:path_id", { :controller => "msg_chains", :action => "show" })
  
  # UPDATE
  
  post("/modify_msg_chain/:path_id", { :controller => "msg_chains", :action => "update" })
  
  # DELETE
  get("/delete_msg_chain/:path_id", { :controller => "msg_chains", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Offer resource:

  # CREATE
  post("/insert_offer", { :controller => "offers", :action => "create" })
          
  # READ
  get("/offers", { :controller => "offers", :action => "index" })
  
  get("/offers/:path_id", { :controller => "offers", :action => "show" })
  
  # UPDATE
  
  post("/modify_offer/:path_id", { :controller => "offers", :action => "update" })
  
  # DELETE
  get("/delete_offer/:path_id", { :controller => "offers", :action => "destroy" })

  #------------------------------

  # Routes for the Item resource:

  # CREATE
  post("/insert_item", { :controller => "items", :action => "create" })
          
  # READ
  get("/items", { :controller => "items", :action => "index" })
  
  get("/items/:path_id", { :controller => "items", :action => "show" })
  
  # UPDATE
  
  post("/modify_item/:path_id", { :controller => "items", :action => "update" })
  
  # DELETE
  get("/delete_item/:path_id", { :controller => "items", :action => "destroy" })

  get "/my_sales", to: "items#my_sales", as: "my_sales"

  post "/update_location", to: "users#update_location"


  #------------------------------

  get 'home/index'

  devise_for :users

  authenticated :user do
  root to: "dashboard#index", as: :authenticated_root
end

unauthenticated do
  root to: "devise/sessions#new"
end



  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"

end
