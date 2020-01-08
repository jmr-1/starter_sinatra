class Role < ActiveRecord::Base
    #join table 
    belongs_to :actor
    belongs_to :movie
end 