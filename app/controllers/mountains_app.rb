class MountainsApp < Sinatra::Base
  get '/' do
    erb :"home/index"
  end



  get '/mountains' do
    @mountains = Mountain.all
    erb :"mountains/index"
  end

  get '/mountains/:id' do
    @mountain = Mountain.find(params[:id])
    erb :"mountains/show"
  end

  get '/mountains/new' do
    @mountain   = Mountain.new
    @countries = Country.all
    erb :"mountains/new"
  end

  post '/mountains' do
    @mountain = Mountain.create(params[:mountain])
    redirect "/mountains/#{@mountain.id}"
  end

  get '/mountains/:id/edit' do
    @mountain = Mountain.find(params[:id])
    @countries = Country.all
    erb :"mountains/edit"
  end

  put '/mountains/:id' do
    @mountain = Mountain.update(params[:id], params[:mountain])
    redirect "/mountains/#{@mountain.id}"
  end

  delete '/mountains/:id' do
    @mountain = Mountain.destroy(params[:id])
    redirect "/mountains"
  end



  get '/countries' do
    @countries = Country.all
    erb :"countries/index"
  end

  get '/countries/:id' do
    @country = Country.find(params[:id])
    erb :"countries/show"
  end
end
