class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/inventory" do
    # { message: "caroline!" }.to_json
  inventory = Inventory.all
  p inventory
  inventory.to_json()
  end

  get "/inventory/:pk" do
  inventory = Inventory.find_by(id: params[:pk])
  inventory.to_json()
  end
  # posting
  post "/inventory/" do
  inventory = Inventory.create(
    name:params[:name],
    quantity:params[:quantity],
    expiration_date:params[:expiration_date],
  )
  inventory.save()

  {
    "Message": "created successfully",
    "Status": "HTTP_200_OK"
  }.to_json()

  end

end
