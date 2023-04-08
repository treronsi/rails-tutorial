class BooksController < ApplicationController

	def index
		@books = Book.all
	end
	
	def show
		@book = Book.find(params[:id])
	end
	
	def new
		@book = Book.new
		@book.year = 2023
		@book.month = 4
	end

end
