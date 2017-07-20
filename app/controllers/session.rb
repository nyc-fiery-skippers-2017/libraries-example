get '/session/new' do
  erb :'/session/new'
end

post '/session' do

  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/books'
  else
    @errors = ['Email/ password is invalid']
    erb :'/session/new'
  end
end
