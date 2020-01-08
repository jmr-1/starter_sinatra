class MovieController < Sinatra::Base

    configure do 

        set :public_folder, "public"
        set :views, "app/views/movies"
        set :method_override, true
    end 


    get '/movies' do 
        @movies = Movie.all
        erb :index
    end 
end 