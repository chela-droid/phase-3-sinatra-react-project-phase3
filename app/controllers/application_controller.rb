class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/inventory" do
    # { message: "caroline!" }.to_jsonC
  inventory = Inventory.all

  inventory.to_json
  end

  get "/inventory/:id" do
  inventory = Inventory.find_by(id: params[:id])
  inventory.to_json()
  end
  # posting
  post "/inventory" do
  inventory = Inventory.create(
    medicine_name: params[:medicine_name],
    quantity: params[:quantity],
    expiration_date: params[:expiration_date],
  )
  inventory.save()

  {
    "Message": "created successfully",
    "Status": "HTTP_200_OK"
  }.to_json()

  end
  # patch
  patch "/inventory/update/:id" do
  inventory = Inventory.find_by(id: params[:id])

  inventory.update(
    medicine_name: params[:medicine_name],
    quantity: params[:quantity],
    expiration_date: params[:expiration_date]
  )
  inventory.to_json()
  end
  # delete

  delete "/inventory/:id" do
  inventory = Inventory.find_by(id: params[:id])
  inventory.destroy
  {
    "message":"successfully deleted #{:id}",
    "Status": "HTTP_Status_OK"
  }.to_json
  end

end
