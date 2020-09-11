class LikesController < ApplicationController
	before_action :authenticate_user!
    before_action :set_like

    def create
        user = current_user
        book = Book.find(params[:book_id])
        like = Like.create(user_id: user.id, book_id: book.id)
    end
    def destroy
        user = current_user
        book = Book.find(params[:book_id])
        like = Like.find_by(user_id: user.id, book_id: book.id)
        like.delete
    end

    private
    def set_like
        @book = Book.find(params[:book_id])
    end
end
