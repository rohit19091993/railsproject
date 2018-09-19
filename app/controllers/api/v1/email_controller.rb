module Api
 module V1

class EmailController < ApplicationController



     def index
       email = Email.order('created_at DESC');
       render json: {status: 'SUCESS', message: 'loaded Email', data:email},status: :ok

     end

       def show 
         
       email = Email.find(params[:id])
       render json: {status: 'SUCESS', message: 'loaded done ', data:email},status: :ok


       end

       def create
       
       email = Email.new(email_params)

       if email.save
       	 render json: {status: 'SUCESS', message: 'email save ', data:email},status: :ok
        else 
        render json: {status: 'fail', message: 'email not saved ', data:errors},status: :unprocessable_entity

        end
       end


       private

       def email_params
         
         params.permit(:email_id, :e_id, :email, :email_type)

       end



end


 end


end
