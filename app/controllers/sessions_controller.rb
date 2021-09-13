class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(login: params[:login])

      if user && user.authenticate(params[:password_digest])#password_digest
          ##session[:user_id] = @user.id
         sign_in(user)
         redirect_to users_path(user)  #, notice
      else
        flash.now[:danger] = "erro login"
        #message = "erro login"
        ##redirect_to entrar_path #, notice: message  
        redirect_to users_path
      end
    end   

  
  def destroy
    sign_out
    flash[:success] = 'Logout realizado'
    redirect_to entrar_path
  end  

end


 #session do outro tutorial gorails
 #def create
  #@user = User.find_by(login: params[:login])
  
  #authenticate user credenciais
  #if !!@user && @user.authenticate(params[:password])
      #set session and redirect sucess
      #session[:user_id] = @user.id
      #redirect_to #user_path # teste ainda 10/09
  #else
      #error message
      #message = "Somenthing username e password!"
      #redirect_to login_path, notice: message
      #redirect_to login_path, notice: message
  #end         
#nd