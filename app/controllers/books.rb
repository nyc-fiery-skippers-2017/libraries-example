get '/' do
  erb :'index'
end

get '/books' do
  require_user
  @books = Book.all

  erb :'/books/index'
end

get '/books/new' do
  require_user
  erb :'/books/new'
end

get '/books/:id' do
  require_user
  @book = Book.find_by(id: params[:id])
  erb :'/books/show'
end

post '/books' do
  @book = Book.new(params[:book])
  if @book.save
    redirect "/books"
  else
    @errors = @book.errors.full_messages
    erb :'/books/new'
  end
end

get '/books/:id/edit' do
  require_user
  @book = Book.find_by(id: params[:id])
  erb :'/books/edit'
end


put '/books/:id' do
  @book = Book.find_by(id: params[:id])
  if @book.update(params[:book])
    redirect '/books'
  else
    @errors = @book.errors.full_messages
    erb :'/books/edit'
  end
end


delete '/books/:id' do
  book = Book.find_by(id: params[:id])
  if book
    book.destroy
    redirect '/books'
  end
end
