get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/books'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end

end
