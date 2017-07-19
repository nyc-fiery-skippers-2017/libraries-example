get '/' do
  erb :'index'
end

get '/books' do
  @books = Book.all
  erb :'/books/index'
end

get '/books/new' do
  erb :'/books/new'
end

get '/books/:id' do
  @book = Book.find_by(id: params[:id])
  erb :'/books/show'
end

post '/books' do
  binding.pry
  @book = Book.new(title: params[:title], author: params[:author])
  if @book.save
    redirect "/books"
  else
    @errors = @book.errors.full_messages
    erb :'/books/new'
  end
end

get '/books/:id/edit' do
  # edit.erb
end


put '/books/:id' do

end


delete '/bookd/:id' do
end
