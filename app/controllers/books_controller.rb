# This controller is responsible for handling the CRUD operations for the Book model.

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id]) 
  end

  def new
    @book = Book.new 
  end

  def create 
    @book = Book.new(book_params) 
    if @book.save
      redirect_to @book, notice: 'Book was successfully added.' 
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id]) 
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: 'Book updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: 'Book removed successfully.'
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description)
  end
end
