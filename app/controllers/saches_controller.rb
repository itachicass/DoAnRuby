class SachesController < ApplicationController
    include Pagy::Backend
    def index
       @pagy, @saches = pagy(Book.all, page: params[:page], items: 3)
    end

    def show
        @sach = Book.find(params[:id])
        @hinhanh = Image.where("masach = '"+params[:id]+"'")
    end
end
