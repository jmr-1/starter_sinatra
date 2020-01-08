class ActorController < Sinatra::Base

    configure do

        set :public_folder, "public"
        set :views, "app/views/actors"
        set :method_override, true
    end

    get "/actors" do
      @actor = Actor.all
      erb :index
    end

    get '/actors/new' do
      erb :new
    end


    post '/actors' do
      @actor = params
      new_actor = Actor.create(name: @actor[:name], age: @actor[:age], experience: @actor[:experience])
      redirect to "/actors/#{new_actor.id}"
    end

    get '/actors/:id' do
      @actor = Actor.find_by_id(params[:id])
      erb :show
    end

    get '/actors/:id/edit' do
      @actor = Actor.find_by_id(params[:id])
      erb :edit
    end

    patch '/actors/:id' do
      @actor = Actor.find_by_id(params[:id])
      @actor.name = params[:name]
      @actor.age = params[:age]
      @actor.experience = params[:experience]
      @actor.save
      redirect to "/actors/#{@actor.id}"
    end
end
