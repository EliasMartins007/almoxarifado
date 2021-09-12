module SessionsHelper
    #login no app
    def sign_in(user)
        session[:user_id] = user.id # usuario logado
    end 
    
    #logout no app
    def sign_out
        session.delete(:user_id)
    end 
    
    #verificar se variavel já setada
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end 
    
    def user_signed_in?
        #metodo current_user  verifica se usuário logado
        !current_user.nil?
    end    
    #
end

