class Patient < ActiveRecord::Base
    belongs_to :Inventory
end
