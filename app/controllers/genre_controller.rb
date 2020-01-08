class GenreController < Sinatra::Base

  configure do

      set :public_folder, "public"
      set :views, "app/views/genres"
      set :method_override, true
  end

get '/genres' do
  @genres = Movie.genres
  erb :index
end

get '/genres/:genre' do
  @genre = Movie.where("genre =?", params[:genre])

  erb :genre_page
end


post '/genres' do
  @g = params[:genre]
  redirect to "/genres/#{params[:genre]}"
end

end
