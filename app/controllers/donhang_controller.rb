class DonhangController < ApplicationController
  before_action :authenticate_user!
  def order
    tongtien = session[:tongtien]
    # order = Order.create(makh: 1, tongtien: tongtien, tinhtrang: 'moi', ghichu: '' )
    order = Order.new
    order.makh = current_user.id
    order.tongtien = tongtien
    order.tinhtrang = "moi"
    order.ghichu = ""
    # if order.save?
    #   current_user.id
    #   session[:cart].each do |sach|
    #   thanhtien = sach['dongia'] * sach['soluong']
    #   detail = Cthd.create(sohd: order['sohd'], masach: sach['masach'], makm: 0, dongia: sach['dongia'], soluong: sach['soluong'], thanhtien: thanhtien)
    #   detail.save
    #   end
      session[:cart] = []
      session[:tongtien] = 0
      redirect_to root_path, notice: 'Đặt hàng thành công'
    # end
  end
  
  def view_orders
    @orders= Order.where("makh = '"+current_user.id+"'")
  end

  def create
    sach = Book.find_by(params[:masach])
    # Time.now.strftime("%Y/%m/%d"),
    @order = Order.create(makh: 0, tongtien: sach.dongia, tinhtrang: 'moi', ghichu: '' )
    # @order.save 
    # @detail = OrderDetail.create(sohd: order.sohd, masach: sach.masach, makm: 0, dongia: sach.dongia, soluong: 1, thanhtien: sach.dongia)
    # @detail.save
    # if @detail.save?
      redirect_to root_path, notice: 'Đặt hàng thành công'    
    # else
    #   redirect_to root_path, notice: 'Đặt hàng không thành công'
    # end
    
  end
end
