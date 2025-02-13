# This is a simple model that represents a book being borrowed by a borrower.

class BorrowingsController < ApplicationController
  def new
    @book = Book.find(params[:book_id]) 
    @borrowing = @book.borrowings.new
  end

  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.new(borrowing_params.merge(borrowed_at: Time.current))

    if @borrowing.save
      redirect_to @book, notice: 'Book borrowed successfully.'
    else
      render :new
    end
  end

  def return
    @borrowing = Borrowing.find(params[:id])
    @borrowing.update(returned_at: Time.current)
    redirect_to @borrowing.book, notice: 'Book returned successfully.'
  end

  private

  def borrowing_params
    params.require(:borrowing).permit(:borrower)
  end
end
