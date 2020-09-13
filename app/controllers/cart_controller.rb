class CartController < ApplicationController
    protect_from_forgery
    before_action :init_session

#     def themgiohang
#     @id = params[:id] 
#     @result = Sach.where(id: @id.to_i).limit(1) 
#     struct = Struct.new(:id, :tensach, :hinhanh, :soluong, :giaban)
#     gh = struct.new(@result[0].id, @result[0].tensach, @result[0].hinhanh, 1, @result[0].giaban)
#     if session[:cart].empty?
#       session[:cart] << gh
#     else
#       check = false
#       session[:cart].each do |sp|
#         if sp['id'] == gh.id
#           sp['soluong'] += 1
#           check = true
#           break
#         end
#       end 
#       if !check
#         session[:cart] << gh
#       end 
#     end
#     respond_to do |format|
#       format.json {render json: @result}
#     end
#   end

    def add_to_cart
        
        # @id = params[:masach] 
        # struct = Struct.new(:id, :tensach)
        # gh = struct.new(@id, "Co gai den tu the gioi oan hon")
        # session[:cart] << gh
        # #
        @s = Book.find_by(id: params[:id].to_i)
            @s['soluong'] = 1
            struct = Struct.new(:id, :tensach, :hinhanh, :dongia, :soluong)
            sach = struct.new(@s.id, @s.tensach, @s.hinhanh, @s.dongia, 1)
        if session[:cart].empty? || session[:cart].nil?
            then           
            session[:tongtien] += @s.dongia
            session[:cart] << sach
            flash[:notice] = "Thêm vào giỏ thành công"
            
        else
            @check = 0;
            session[:cart].each do |sach|
                if sach['id'] == params[:id].to_i
                    sach['soluong'] += 1
                    session[:tongtien] += sach['dongia']
                    flash[:notice] = "Thêm vào giỏ thành công"
                    @check = 1;
                end
            end
            if @check == 0
                session[:tongtien] += @s.dongia
                session[:cart] << sach
                flash[:notice] = "Thêm vào giỏ thành công"
            end
       
        end
        if @check == 0
        flash[:notice] = "Thêm vào giỏ không thành công" 
        @cart = session[:cart]
        else
        redirect_to action: :load_cart
        end
    end

    def load_cart
        @cart = session[:cart]
        @total = session[:tongtien]
        @test = session[:test]
       
    end

    def init_session
        session[:cart] ||= []
        session[:tongtien] ||= 0
      
        
    end

    def remove_from_cart
        session[:cart].each do |sach|
            if sach.min_by(id: params[:id]).present?
                session[:tongtien] -= sach['dongia']*sach['soluong']
                session[:cart].delete(sach)
                
            end
        end
        
        redirect_to action: :load_cart
    end

end
