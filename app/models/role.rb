class Role < ActiveRecord::Base
    #join table 
    belongs_to :actors
    belongs_to :movies
end 