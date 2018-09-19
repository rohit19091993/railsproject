module Api
 module V1

class EmployeeController < ApplicationController



     def index
       employee = Employee.order('created_at DESC');
       render json: {status: 'SUCESS', message: 'loaded employee', data:employee},status: :ok

     end

       def show 
         
       employee = Employee.find(params[:id])
       render json: {status: 'SUCESS', message: 'loaded done ', data:employee},status: :ok


       end

       def create
       
       employee = Employee.new(employee_params)

       if employee.save
       	 render json: {status: 'SUCESS', message: 'employee , email & phone table data  save ', data:employee},status: :ok
        else 
        render json: {status: 'fail', message: 'employee not saved ', data:errors},status: :unprocessable_entity

        end
       end


       private

       def employee_params
         
         

         params.require(:employee).permit(:e_id,:name,:company , 
          emails_attributes:[:email_id,:e_id,:email,:email_type],
          phones_attributes: [:p_id,:e_id,:phone_number,:phone_type])

          

       end



end


 end


end
