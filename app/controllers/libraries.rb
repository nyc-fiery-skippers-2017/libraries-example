get '/libraries/:id/books' do
  @library = Library.find_by(id: params[:id])
  @books = @library.books

  @book = @library.books.new()
end
