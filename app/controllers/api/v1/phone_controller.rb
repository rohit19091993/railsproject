module Api
 module V1

class PhoneController < ApplicationController



     def index
       phone = Phone.order('created_at DESC');
       render json: {status: 'SUCESS', message: 'loaded phone', data:phone},status: :ok

     end

       def show 
         
       phone = Phone.find(params[:id])
       render json: {status: 'SUCESS', message: 'loaded done ', data:phone},status: :ok


       end

       def create
       
       phone = Phone.new(phone_params)

       if Phone.save
       	 render json: {status: 'SUCESS', message: 'phone save ', data:phone},status: :ok
        else 
        render json: {status: 'fail', message: 'phone not saved ', data:errors},status: :unprocessable_entity

        end
       end


       private

       def phone_params
         
         params.permit(:p_id,:e_id,:phone_number,:phone_type)

       end



end


 end


end
