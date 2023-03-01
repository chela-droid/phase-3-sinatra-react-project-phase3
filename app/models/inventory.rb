class Inventory < ActiveRecord::Base
    has_many :patients
end