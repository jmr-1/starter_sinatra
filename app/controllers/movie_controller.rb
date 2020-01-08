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

    get "/movies/new" do 
        
        erb :new 
    end 

    get "/movies/:id" do
        @movie = Movie.find(params[:id]) #changed from find_by so it raises error if not found 
        erb :show
    end

    post "/movies" do 
        new_movie = Movie.create(title: params[:title], length: params[:length], genre: params[:genre])
        redirect to "/movies/#{new_movie.id}"
    end 

    get "/movies/:id/edit" do 
        @movie = Movie.find(params[:id])
        erb :edit 
    end 

    patch "/movies/:id" do
        @movie = Movie.find_by(params[:id])
        @movie.title = params[:title]
        @movie.length = params[:length]
        @movie.genre = params[:genre]
        @movie.save
        redirect to "/movies/#{@movie.id}"
    end 

    delete "/movies/:id" do 
        @movie = Movie.find_by(id: params[:id])
        @movie.delete
        redirect to "/movies"
    end 
end
