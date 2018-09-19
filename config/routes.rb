Rails.application.routes.draw do
   namespace 'api' do
   
      namespace 'v1' do

      resources :employee


      end



   	end
end
