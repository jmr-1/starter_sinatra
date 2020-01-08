class ApplicationController < Sinatra::Base

    configure do 

        set :public_folder, "public"
        set :views, "app/views"
        set :method_override, true
    end 

    get '/' do  #redirects to homepage

        redirect '/home'
    end 

    get '/home' do #goes to home page 

        erb :home 
    end 

    get '/about' do #goes to about page 

        erb :about
    end 
end
