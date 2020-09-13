class SachesController < ApplicationController
    include Pagy::Backend
    def index
        @pagy, @saches = pagy(Book.all, page: params[:page], items: 3)
    end

    def show
        @sach = Book.find(params[:id])
        @hinhanh = Image.where("masach = '"+params[:id]+"'")
    end

    def search
        x = params[:text]
        @pagy, @saches = pagy(Book.where("tensach like '%#{x}%' or theloai like '%#{x}%' or tacgia like '%#{x}%' or nxb like '%#{x}%'"), page: params[:page], items: 3)
    end
end
