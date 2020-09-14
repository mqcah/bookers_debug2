class FavoritesController < ApplicationController
	before_action :authenticate_user!
    before_action :set_like

	def create
	    book = Book.find(params[:book_id])
	    favorite = current_user.favorites.new(book_id: book.id)
	    favorite.save
	    redirect_back fallback_location: @book
	end

	def destroy
	    book = Book.find(params[:book_id])
	    favorite = current_user.favorites.find_by(book_id: book.id)
	    favorite.destroy
	    redirect_back fallback_location: @book
	end

    private
    def set_like
        @book = Book.find(params[:book_id])
    end
end
