class ActorController < Sinatra::Base

    configure do 

        set :public_folder, "public"
        set :views, "app/views/actors"
        set :method_override, true
    end 
end 